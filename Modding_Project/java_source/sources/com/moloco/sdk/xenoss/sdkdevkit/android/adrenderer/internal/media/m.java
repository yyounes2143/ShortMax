package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class m implements l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f34167a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f34168b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f34169c;

    public m(@NotNull Context appContext, @NotNull String cacheDir) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
        this.f34167a = appContext;
        this.f34168b = cacheDir;
        this.f34169c = "MediaCacheLocationProviderImpl";
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.l
    @NotNull
    public g0<File, com.moloco.sdk.internal.q> a() {
        try {
            File externalCacheDir = this.f34167a.getExternalCacheDir();
            if (externalCacheDir != null) {
                File file = new File(externalCacheDir, this.f34168b);
                file.mkdir();
                if (file.exists()) {
                    return new g0.b(file);
                }
            }
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in external storage", null, false, 12, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in external storage", 102));
        } catch (IOException e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in external storage", e10, false, 8, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in external storage", 101));
        } catch (SecurityException e11) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in external storage", e11, false, 8, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in external storage", 100));
        } catch (Exception e12) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in external storage", e12, false, 8, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in external storage", 200));
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.l
    @NotNull
    public g0<File, com.moloco.sdk.internal.q> b() {
        try {
            if (this.f34167a.getCacheDir() != null) {
                File file = new File(this.f34167a.getCacheDir(), this.f34168b);
                file.mkdir();
                if (file.exists()) {
                    MolocoLogger.debug$default(MolocoLogger.INSTANCE, this.f34169c, "Able to write to internal storage cache directory", false, 4, null);
                    return new g0.b(file);
                }
            }
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in internal storage", null, false, 12, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in internal storage", 102));
        } catch (IOException e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in external storage", e10, false, 8, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in internal storage", 101));
        } catch (SecurityException e11) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in external storage", e11, false, 8, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in internal storage", 100));
        } catch (Exception e12) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f34169c, "Failed to create cache directory in external storage", e12, false, 8, null);
            return new g0.a(new com.moloco.sdk.internal.q("Failed to create cache directory in internal storage", 200));
        }
    }
}
