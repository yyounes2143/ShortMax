package com.unity3d.services.analytics;
/* loaded from: classes7.dex */
public enum AcquisitionType {
    SOFT,
    PREMIUM;

    /* renamed from: com.unity3d.services.analytics.AcquisitionType$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$unity3d$services$analytics$AcquisitionType;

        static {
            int[] iArr = new int[AcquisitionType.values().length];
            $SwitchMap$com$unity3d$services$analytics$AcquisitionType = iArr;
            try {
                iArr[AcquisitionType.SOFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$unity3d$services$analytics$AcquisitionType[AcquisitionType.PREMIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        int i10 = AnonymousClass1.$SwitchMap$com$unity3d$services$analytics$AcquisitionType[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return "";
            }
            return "premium";
        }
        return "soft";
    }
}
