package com.vungle.ads.internal.omsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.iab.omid.library.vungle.Omid;
import com.vungle.ads.R;
import com.vungle.ads.internal.util.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
import ws.n;
/* compiled from: OMInjector.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OMInjector {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String OM_SDK_JS = "omsdk.js";
    @NotNull
    private static final String OM_SESSION_JS = "omsdk-session.js";
    @NotNull
    private AtomicReference<String> cachedOMSDKJS;
    @NotNull
    private AtomicReference<String> cachedOMSessionJS;
    @NotNull
    private final Context context;
    @NotNull
    private final Handler uiHandler;

    /* compiled from: OMInjector.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public OMInjector(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.uiHandler = new Handler(Looper.getMainLooper());
        this.cachedOMSDKJS = new AtomicReference<>(null);
        this.cachedOMSessionJS = new AtomicReference<>(null);
    }

    private final String getOMSessionJS() {
        String str = this.cachedOMSessionJS.get();
        if (str == null) {
            String loadJsFromRaw = loadJsFromRaw(R.raw.omid_session_client_v1_5_3);
            this.cachedOMSessionJS.set(loadJsFromRaw);
            return loadJsFromRaw;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: init$lambda-2  reason: not valid java name */
    public static final void m4815init$lambda2(OMInjector this$0) {
        Object d10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            Result.a aVar = Result.f60901b;
            if (!Omid.isActive()) {
                Omid.activate(this$0.context);
            }
            d10 = Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            Logger.Companion companion = Logger.Companion;
            companion.e("OMSDK", "error: " + g10.getLocalizedMessage());
        }
    }

    private final String loadJsFromRaw(@RawRes int i10) {
        Object d10;
        String str = null;
        try {
            Result.a aVar = Result.f60901b;
            InputStream openRawResource = this.context.getResources().openRawResource(i10);
            Intrinsics.checkNotNullExpressionValue(openRawResource, "context.resources.openRawResource(resId)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openRawResource, Charsets.UTF_8), 8192);
            String h10 = n.h(bufferedReader);
            b.a(bufferedReader, null);
            d10 = Result.d(h10);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        if (!Result.i(d10)) {
            str = d10;
        }
        return str;
    }

    private final File writeToFile(String str, File file) {
        if (str != null) {
            FileWriter fileWriter = new FileWriter(file);
            try {
                fileWriter.write(str);
                fileWriter.flush();
                b.a(fileWriter, null);
                return file;
            } finally {
            }
        } else {
            throw new IOException("omsdk js must not be null");
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Nullable
    public final String getOMSDKJS$vungle_ads_release() {
        String str = this.cachedOMSDKJS.get();
        if (str == null) {
            String loadJsFromRaw = loadJsFromRaw(R.raw.omsdk_v1_5_3);
            this.cachedOMSDKJS.set(loadJsFromRaw);
            return loadJsFromRaw;
        }
        return str;
    }

    public final void init() {
        this.uiHandler.post(new Runnable() { // from class: com.vungle.ads.internal.omsdk.a
            @Override // java.lang.Runnable
            public final void run() {
                OMInjector.m4815init$lambda2(OMInjector.this);
            }
        });
    }

    @WorkerThread
    @NotNull
    public final List<File> injectJsFiles$vungle_ads_release(@NotNull File dir) {
        File file;
        Intrinsics.checkNotNullParameter(dir, "dir");
        String oMSDKJS$vungle_ads_release = getOMSDKJS$vungle_ads_release();
        File file2 = null;
        if (oMSDKJS$vungle_ads_release != null) {
            file = writeToFile(oMSDKJS$vungle_ads_release, new File(dir, OM_SDK_JS));
        } else {
            file = null;
        }
        String oMSessionJS = getOMSessionJS();
        if (oMSessionJS != null) {
            file2 = writeToFile(oMSessionJS, new File(dir, OM_SESSION_JS));
        }
        return CollectionsKt.s(file, file2);
    }
}
