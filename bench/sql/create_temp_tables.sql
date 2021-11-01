CREATE TEMP TABLE IF NOT EXISTS tstock (
    id INT GENERATED ALWAYS AS IDENTITY,
    symbol TEXT NOT NULL UNIQUE,
    company VARCHAR(100),
    country VARCHAR(100),
    exchange VARCHAR(100),
    industry VARCHAR(100),
    sector VARCHAR(100),
    last_updated DATE
)
ON COMMIT DELETE ROWS;

CREATE TEMP TABLE IF NOT EXISTS tfundamentals (
    id INT GENERATED ALWAYS AS IDENTITY,
    stock_id INT,
    period_key VARCHAR(50) NOT NULL UNIQUE,
    period_type TEXT,
    filing_date DATE,
    filing_year INT,
    filing_quarter INT,
    fiscal_year INT,
    fiscal_quarter INT,
    data_generation_date DATE,
    period_end_date DATE,
    filing_type TEXT,
    accounts_payable BIGINT,
    accounts_receivable BIGINT,
    assets_current_cash BIGINT,
    assets_current_cash_restricted BIGINT,
    assets_current_deferred_comp BIGINT,
    assets_current_deferred_tax BIGINT,
    assets_current_discontinued_operations BIGINT,
    assets_current_investments BIGINT,
    assets_current_operating_leases BIGINT,
    assets_current_net_loans BIGINT,
    assets_current_other BIGINT,
    assets_current_separate_accounts BIGINT,
    assets_current_unadjusted BIGINT,
    assets_fixed BIGINT,
    assets_fixed_deferred_compensation BIGINT,
    assets_fixed_deferred_tax BIGINT,
    assets_fixed_discontinued_operations BIGINT,
    assets_fixed_leases_operating BIGINT,
    assets_fixed_operating_discontinued_operations BIGINT,
    assets_fixed_operating_subsidiary_unconsolidated BIGINT,
    assets_fixed_oreo BIGINT,
    assets_fixed_other BIGINT,
    assets_fixed_unconsolidated BIGINT,
    assets_unadjusted BIGINT,
    capex BIGINT,
    capex_acquisition BIGINT,
    capex_maintenance BIGINT,
    cash_flow_financing BIGINT,
    cash_flow_investing BIGINT,
    cash_flow_operating BIGINT,
    cash_flow_share_repurchase BIGINT,
    cash_long_term BIGINT,
    cash_operating BIGINT,
    cash_paid_for_income_taxes BIGINT,
    cash_paid_for_interest BIGINT,
    cash_restricted BIGINT,
    charge_after_tax BIGINT,
    charge_after_tax_discontinued_operations BIGINT,
    charges_after_tax_other BIGINT,
    credit_loss_provision BIGINT,
    debt_financial BIGINT,
    debt_short_term BIGINT,
    depreciation_and_amortization_accumulated BIGINT,
    depreciation_and_amortization_cash_flow BIGINT,
    dividends_preferred BIGINT,
    dividends_preferred_redeemable_mandatorily BIGINT,
    earnings_retained BIGINT,
    ebit_reported BIGINT,
    ebitda_reported BIGINT,
    equity_shareholder BIGINT,
    equity_shareholder_other BIGINT,
    equity_shareholder_other_deferred_compensation BIGINT,
    equity_shareholder_other_equity BIGINT,
    equity_shareholder_other_mezzanine BIGINT,
    expenses BIGINT,
    expenses_acquisition_merger BIGINT,
    expenses_compensation BIGINT,
    expenses_depreciation_and_amortization BIGINT,
    expenses_derivative BIGINT,
    expenses_discontinued_operations BIGINT,
    expenses_discontinued_operations_reits BIGINT,
    expenses_energy BIGINT,
    expenses_foreign_currency BIGINT,
    expenses_interest BIGINT,
    expenses_interest_financials BIGINT,
    expenses_interest_minority BIGINT,
    expenses_legal_regulatory_insurance BIGINT,
    expenses_non_operating_company_defined_other BIGINT,
    expenses_non_operating_other BIGINT,
    expenses_non_operating_subsidiary_unconsolidated BIGINT,
    expenses_non_recurring_other BIGINT,
    expenses_operating BIGINT,
    expenses_operating_other BIGINT,
    expenses_operating_subsidiary_unconsolidated BIGINT,
    expenses_oreo BIGINT,
    expenses_oreo_reits BIGINT,
    expenses_other_financing BIGINT,
    expenses_restructuring BIGINT,
    expenses_sga BIGINT,
    expenses_stock_compensation BIGINT,
    expenses_write_down BIGINT,
    ffo BIGINT,
    goodwill_amortization_cash_flow BIGINT,
    goodwill_amortization_income_statement BIGINT,
    goodwill_and_intangibles_net_other BIGINT,
    goodwill_net BIGINT,
    income_from_operations BIGINT,
    income_net BIGINT,
    income_net_pre_tax BIGINT,
    income_operating BIGINT,
    income_operating_discontinued_operations BIGINT,
    income_operating_other BIGINT,
    income_operating_subsidiary_unconsolidated BIGINT,
    income_operating_subsidiary_unconsolidated_after_tax BIGINT,
    income_tax BIGINT,
    income_tax_current BIGINT,
    income_tax_deferred BIGINT,
    income_tax_rate FLOAT,
    interest_minority BIGINT,
    inventory BIGINT,
    liabilities BIGINT,
    liabilities_current BIGINT,
    liabilities_non_current_and_interest_minority_total BIGINT,
    liabilities_non_current_debt BIGINT,
    liabilities_non_current_deferred_compensation BIGINT,
    liabilities_non_current_deferred_tax BIGINT,
    liabilities_non_current_discontinued_operations BIGINT,
    liabilities_non_current_leases_operating BIGINT,
    liabilities_non_current_long_term BIGINT,
    liabilities_non_current_operating_discontinued_operations BIGINT,
    liabilities_non_current_other BIGINT,
    nibcl_deferred_compensation BIGINT,
    nibcl_deferred_tax BIGINT,
    nibcl_discontinued_operations BIGINT,
    nibcl_leases_operating BIGINT,
    nibcl_other BIGINT,
    nibcl_restructuring BIGINT,
    nibcl_revenue_deferred BIGINT,
    nibcl_separate_accounts BIGINT,
    oci BIGINT,
    ppe_net BIGINT,
    profit_gross BIGINT,
    research_and_development_expense BIGINT,
    reserves BIGINT,
    reserves_inventory BIGINT,
    reserves_lifo BIGINT,
    reserves_loan_loss BIGINT,
    revenue BIGINT,
    revenue_cost_other BIGINT,
    revenue_income_interest BIGINT,
    revenue_other BIGINT,
    revenue_subsidiary_unconsolidated BIGINT,
    sales_cost BIGINT,
    shares_issued BIGINT,
    shares_outstanding_pe_date_bs BIGINT,
    shares_treasury BIGINT,
    stock_common BIGINT,
    stock_preferred BIGINT,
    stock_preferred_equity BIGINT,
    stock_preferred_mezzanine BIGINT,
    stock_treasury BIGINT,
    wabso BIGINT,
    wabso_split_adjusted BIGINT,
    wadso BIGINT,
    wadso_split_adjusted BIGINT,
    nopat BIGINT,
    lifo_delta BIGINT,
    adjusted_inventory BIGINT,
    adjusted_sales_cost BIGINT,
    non_cash_working_capital BIGINT,
    non_cash_working_capital_delta BIGINT,
    free_cash_flow BIGINT,
    invested_capital BIGINT,
    cash_invested_capital BIGINT,
    average_total_assets BIGINT,
    average_inventory BIGINT,
    average_accounts_receivable BIGINT,
    average_accounts_payable BIGINT
)
ON COMMIT DELETE ROWS;

CREATE TEMP TABLE IF NOT EXISTS tmetrics (
    id INT GENERATED ALWAYS AS IDENTITY,
    stock_id INT,
    period_key VARCHAR(50) NOT NULL UNIQUE,
    period_type TEXT,
    filing_date DATE,
    filing_year INT,
    filing_quarter INT,
    fiscal_year INT,
    fiscal_quarter INT,
    gross_margin FLOAT,
    operating_margin FLOAT,
    ebitda_margin FLOAT,
    ebit_margin FLOAT,
    fcf_margin FLOAT,
    net_income_margin FLOAT,
    revenue_growth FLOAT,
    fcf_growth FLOAT,
    ebitda_growth FLOAT,
    ebit_growth FLOAT,
    three_year_revenue_CAGR FLOAT,
    five_year_revenue_CAGR FLOAT,
    ten_year_revenue_CAGR FLOAT,
    three_year_fcf_CAGR FLOAT,
    five_year_fcf_CAGR FLOAT,
    ten_year_fcf_CAGR FLOAT,
    three_year_ebitda_CAGR FLOAT,
    five_year_ebitda_CAGR FLOAT,
    ten_year_ebitda_CAGR FLOAT,
    sga_to_revenue FLOAT,
    rnd_to_revenue FLOAT,
    sbc_to_revenue FLOAT,
    capex_to_revenue FLOAT,
    capex_to_fcf FLOAT,
    acquisition_capex_to_rev FLOAT,
    maintenance_capex_to_rev FLOAT,
    acquisition_capex_to_fcf FLOAT,
    maintenance_capex_to_fcf FLOAT,
    roa FLOAT,
    roe FLOAT,
    roic FLOAT,
    roiic FLOAT,
    croic FLOAT,
    croiic FLOAT,
    asset_turnover FLOAT,
    receivables_turnover FLOAT,
    payables_turnover FLOAT,
    days_in_sales FLOAT,
    days_in_inventory FLOAT,
    days_in_payables FLOAT,
    cash_conversion_cycle FLOAT
)
ON COMMIT DELETE ROWS;