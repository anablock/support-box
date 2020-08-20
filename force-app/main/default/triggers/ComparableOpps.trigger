/**
 * When an opportunity is created, attach similar deals that have:
 * an amount within a 10% difference,
 * a matching account industry,
 * 'Closed Won' within the past year.
 */
trigger ComparableOpps on SOBJECT (after insert) {

}