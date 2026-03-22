package com.applovin.sdk;
/* loaded from: classes2.dex */
public interface AppLovinCmpError {

    /* loaded from: classes2.dex */
    public enum Code {
        UNSPECIFIED(-1),
        INTEGRATION_ERROR(1),
        FORM_UNAVAILABLE(2),
        FORM_NOT_REQUIRED(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f10884a;

        Code(int i10) {
            this.f10884a = i10;
        }

        public int getValue() {
            return this.f10884a;
        }
    }

    int getCmpCode();

    String getCmpMessage();

    Code getCode();

    String getMessage();
}
