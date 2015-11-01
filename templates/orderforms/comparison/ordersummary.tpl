<div class="totalduetoday">
    {$LANG.ordertotalduetoday}: {$producttotals.pricing.totaltoday}
</div>
{if count($producttotals.pricing.recurring)}
    <div class="totalrecurring">
        {**
         * We use recurringOutput here to show if the language variable ordertotalrecurring
         * has been output.
         * This value will be true when it has been output, and will stop it being
         * output more than once.
         *}
        {assign var='recurringOutput' value=false}
        {foreach from=$producttotals.pricing.recurring key=cycle item=amount}
            {if $cycle neq $LANG.orderpaymenttermonetime && $recurringOutput === false}
                {$LANG.ordertotalrecurring}
                {assign var='recurringOutput' value=true}
            {/if}
            {if $cycle neq $LANG.orderpaymenttermonetime}
                {$cycle}: {$amount}<br />
            {/if}
        {/foreach}
    </div>
{/if}