package com.facebook;

import kotlin.Metadata;
/* compiled from: AccessTokenSource.kt */
@Metadata
/* loaded from: classes3.dex */
public enum AccessTokenSource {
    NONE(false),
    FACEBOOK_APPLICATION_WEB(true),
    FACEBOOK_APPLICATION_NATIVE(true),
    FACEBOOK_APPLICATION_SERVICE(true),
    WEB_VIEW(true),
    CHROME_CUSTOM_TAB(true),
    TEST_USER(true),
    CLIENT_TOKEN(true),
    DEVICE_AUTH(true),
    INSTAGRAM_APPLICATION_WEB(true),
    INSTAGRAM_CUSTOM_CHROME_TAB(true),
    INSTAGRAM_WEB_VIEW(true);
    
    private final boolean canExtendToken;

    /* compiled from: AccessTokenSource.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccessTokenSource.values().length];
            try {
                iArr[AccessTokenSource.INSTAGRAM_APPLICATION_WEB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccessTokenSource.INSTAGRAM_CUSTOM_CHROME_TAB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccessTokenSource.INSTAGRAM_WEB_VIEW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    AccessTokenSource(boolean z10) {
        this.canExtendToken = z10;
    }

    public final boolean canExtendToken() {
        return this.canExtendToken;
    }

    public final boolean fromInstagram() {
        int i10 = a.$EnumSwitchMapping$0[ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return true;
        }
        return false;
    }
}
