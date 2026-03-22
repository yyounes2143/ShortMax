package com.appsflyer.internal;

import android.content.Context;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public interface AFg1vSDK {
    @NotNull
    public static final AFa1vSDK AFa1vSDK = AFa1vSDK.getCurrencyIso4217Code;

    /* loaded from: classes2.dex */
    public static final class AFa1vSDK {
        static final /* synthetic */ AFa1vSDK getCurrencyIso4217Code = new AFa1vSDK();

        private AFa1vSDK() {
        }
    }

    @NotNull
    Map<String, String> getMediationNetwork(@NotNull Context context);
}
