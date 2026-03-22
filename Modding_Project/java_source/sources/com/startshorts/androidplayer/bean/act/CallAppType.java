package com.startshorts.androidplayer.bean.act;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ActConstants.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CallAppType {
    public static final int ADVERTISEMENT = 1;
    public static final int CLEAR_COOKIE = 13;
    public static final int EXIT_WEB_VIEW = 5;
    public static final int EXTERNAL_PAY = 16;
    public static final int EXTERNAL_URL = 6;
    @NotNull
    public static final CallAppType INSTANCE = new CallAppType();
    public static final int JUMP_URL = 15;
    public static final int LOAD_FINISHED = 11;
    public static final int NATIVE_PAGE = 2;
    public static final int PURCHASE = 3;
    public static final int QUERY_SKU_PRICE = 10;
    public static final int RESTORE_ORDER = 14;
    public static final int SHARE = 9;
    public static final int SHORT_DRAMA = 7;
    public static final int SUBSCRIPTION = 8;
    public static final int TOKEN_EXPIRED = 12;
    public static final int TRACKING = 4;

    private CallAppType() {
    }
}
