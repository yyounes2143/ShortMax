package com.applovin.mediation;
/* loaded from: classes2.dex */
public interface MaxMediatedNetworkInfo {

    /* loaded from: classes2.dex */
    public enum InitializationStatus {
        NOT_INITIALIZED(-4),
        DOES_NOT_APPLY(-3),
        INITIALIZING(-2),
        INITIALIZED_UNKNOWN(-1),
        INITIALIZED_FAILURE(0),
        INITIALIZED_SUCCESS(1);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f10756a;

        InitializationStatus(int i10) {
            this.f10756a = i10;
        }

        public static InitializationStatus fromCode(int i10) {
            InitializationStatus[] values;
            for (InitializationStatus initializationStatus : values()) {
                if (initializationStatus.getCode() == i10) {
                    return initializationStatus;
                }
            }
            return NOT_INITIALIZED;
        }

        public int getCode() {
            return this.f10756a;
        }
    }

    String getAdapterClassName();

    String getAdapterVersion();

    InitializationStatus getInitializationStatus();

    String getName();

    String getSdkVersion();
}
