package com.appsflyer.internal;

import android.content.Intent;
import android.os.Parcelable;
import com.appsflyer.AFLogger;
import java.util.ConcurrentModificationException;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nAFIntentWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AFIntentWrapper.kt\ncom/appsflyer/internal/util/AFIntentWrapper\n+ 2 MultiCatch.kt\ncom/appsflyer/internal/util/MultiCatchKt\n*L\n1#1,111:1\n16#2,7:112\n*S KotlinDebug\n*F\n+ 1 AFIntentWrapper.kt\ncom/appsflyer/internal/util/AFIntentWrapper\n*L\n84#1:112,7\n*E\n"})
/* loaded from: classes2.dex */
public final class AFj1gSDK {
    @NotNull
    final Intent getCurrencyIso4217Code;

    public AFj1gSDK(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "");
        this.getCurrencyIso4217Code = intent;
    }

    private final <T> T getRevenue(Function0<? extends T> function0, String str, T t10, boolean z10) {
        Object obj;
        synchronized (this.getCurrencyIso4217Code) {
            try {
                Result.a aVar = Result.f60901b;
                Object d10 = Result.d(function0.invoke());
                KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(ConcurrentModificationException.class), Reflection.getOrCreateKotlinClass(ArrayIndexOutOfBoundsException.class)};
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    if (kotlin.collections.n.f0(kClassArr, Reflection.getOrCreateKotlinClass(g10.getClass()))) {
                        if (z10) {
                            obj = getRevenue(function0, str, t10, false);
                        } else {
                            AFLogger.afErrorLog(str, g10, false, false);
                            obj = t10;
                        }
                        d10 = Result.d(obj);
                    } else {
                        throw g10;
                    }
                }
                Throwable g11 = Result.g(d10);
                if (g11 == null) {
                    t10 = d10;
                } else {
                    AFLogger.afErrorLog(str, g11, false, false);
                }
            }
        }
        return t10;
    }

    @Nullable
    public final String AFAdRevenueData(@NotNull final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        Function0<String> function0 = new Function0<String>() { // from class: com.appsflyer.internal.AFj1gSDK.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* renamed from: getMediationNetwork */
            public final String invoke() {
                return AFj1gSDK.this.getCurrencyIso4217Code.getStringExtra(str);
            }
        };
        return (String) getRevenue(function0, "Error while trying to read " + str + " extra from intent", null, true);
    }

    @Nullable
    public final <T extends Parcelable> T H_(@NotNull final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        Object obj = new Function0<T>() { // from class: com.appsflyer.internal.AFj1gSDK.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* renamed from: J_ */
            public final Parcelable invoke() {
                return AFj1gSDK.this.getCurrencyIso4217Code.getParcelableExtra(str);
            }
        };
        return (T) getRevenue(obj, "Error while trying to read " + str + " extra from intent", null, true);
    }

    @Nullable
    public final Intent I_(@NotNull final String str, final long j10) {
        Intrinsics.checkNotNullParameter(str, "");
        Function0<Intent> function0 = new Function0<Intent>() { // from class: com.appsflyer.internal.AFj1gSDK.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: K_ */
            public final Intent invoke() {
                return AFj1gSDK.this.getCurrencyIso4217Code.putExtra(str, j10);
            }
        };
        return (Intent) getRevenue(function0, "Error while trying to write " + str + " extra to intent", null, true);
    }

    public final boolean getMediationNetwork(@NotNull final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        Function0<Boolean> function0 = new Function0<Boolean>() { // from class: com.appsflyer.internal.AFj1gSDK.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: getCurrencyIso4217Code */
            public final Boolean invoke() {
                return Boolean.valueOf(AFj1gSDK.this.getCurrencyIso4217Code.hasExtra(str));
            }
        };
        Boolean bool = (Boolean) getRevenue(function0, "Error while trying to check presence of " + str + " extra from intent", Boolean.TRUE, true);
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }
}
