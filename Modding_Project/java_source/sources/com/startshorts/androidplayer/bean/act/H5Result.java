package com.startshorts.androidplayer.bean.act;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ActConstants.kt */
@Metadata
/* loaded from: classes6.dex */
public final class H5Result {
    @NotNull
    public static final H5Result INSTANCE = new H5Result();
    @NotNull
    public static final String RESULT_FAILED = "{\"h5_type\":1, \"data\":{\"result\":0}}";
    @NotNull
    public static final String RESULT_PAYMENT_REFRESH = "{\"h5_type\":2}";
    @NotNull
    public static final String RESULT_PAYMENT_SUCCEED = "{\"h5_type\":2,\"data\":{\"type\":1}}";
    @NotNull
    public static final String RESULT_RESTORE_SUCCEED = "{\"h5_type\":2,\"data\":{\"type\":2}}";
    @NotNull
    public static final String RESULT_SUCCESS = "{\"h5_type\":1, \"data\":{\"result\":1}}";

    private H5Result() {
    }
}
