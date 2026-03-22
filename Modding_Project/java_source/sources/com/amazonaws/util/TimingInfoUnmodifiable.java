package com.amazonaws.util;
/* loaded from: classes2.dex */
final class TimingInfoUnmodifiable extends TimingInfo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TimingInfoUnmodifiable(Long l10, long j10, Long l11) {
        super(l10, j10, l11);
    }

    @Override // com.amazonaws.util.TimingInfo
    public TimingInfo c() {
        throw new UnsupportedOperationException();
    }
}
