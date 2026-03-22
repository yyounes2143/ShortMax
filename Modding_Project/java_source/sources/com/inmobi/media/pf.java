package com.inmobi.media;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.pf;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class pf {

    /* renamed from: a  reason: collision with root package name */
    public S3 f25164a;

    /* renamed from: b  reason: collision with root package name */
    public final of f25165b;

    public pf(final Context context, final AdConfig.WebAssetCacheConfig webAssetCacheConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "webAssetCacheConfig");
        this.f25165b = new of();
        Uc.a(new Runnable() { // from class: ub.y5
            @Override // java.lang.Runnable
            public final void run() {
                pf.a(AdConfig.WebAssetCacheConfig.this, this, context);
            }
        });
    }

    public final InputStream a(String url, InterfaceC3269z5 interfaceC3269z5) {
        R3 b10;
        Intrinsics.checkNotNullParameter(url, "url");
        S3 s32 = this.f25164a;
        if (s32 == null) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("WebAssetLRUCacheHelper", "Disk Cache Failed to Initialize. Failed readFromCache: ".concat(url));
            }
            return null;
        }
        try {
            b10 = s32.b(String.valueOf(url.hashCode()));
        } catch (Exception e10) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("WebAssetLRUCacheHelper", "Failed to read from cache with: " + e10.getMessage() + " for " + url);
            }
        }
        if (b10 == null || !Intrinsics.areEqual(url, Ge.a(new InputStreamReader(b10.f24058a[0], Ge.f23690b)))) {
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("WebAssetLRUCacheHelper", "did not find any valid cache entry for ".concat(url));
            }
            return null;
        }
        return b10.f24058a[1];
    }

    public static final void a(AdConfig.WebAssetCacheConfig webAssetCacheConfig, pf this$0, Context context) {
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "$webAssetCacheConfig");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        try {
            long e10 = L3.f23796a.e();
            if (e10 < webAssetCacheConfig.getMinAvailableDiskSpace()) {
                this$0.getClass();
                a(context, e10);
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(context, "web_asset_file_key"), "cache_enabled", false, false, 4, (Object) null);
            } else {
                this$0.a(context, webAssetCacheConfig, e10);
                ConcurrentHashMap concurrentHashMap2 = C6.f23529b;
                C6.a(B6.a(context, "web_asset_file_key"), "cache_enabled", true, false, 4, (Object) null);
            }
        } catch (Exception e11) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e11, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void a(Context context, AdConfig.WebAssetCacheConfig webAssetCacheConfig, long j10) {
        File file = new File(context.getFilesDir(), "inmobiwebassetcache");
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "webAssetCacheConfig");
        long min = (j10 == -1 ? 0 : Math.min(webAssetCacheConfig.getCacheSize(), (int) ((j10 * webAssetCacheConfig.getCacheSizeToDiskSpaceMaxPercent()) / 100))) * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE * 1024;
        of ofVar = this.f25165b;
        Pattern pattern = S3.f24104p;
        if (min > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else if (!file2.renameTo(file3)) {
                    throw new IOException();
                }
            }
            S3 s32 = new S3(file, min, ofVar);
            if (s32.f24107b.exists()) {
                try {
                    s32.c();
                    s32.b();
                    s32.f24115j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(s32.f24107b, true), Ge.f23689a));
                } catch (IOException e10) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                    s32.close();
                    Ge.a(s32.f24106a);
                }
                Intrinsics.checkNotNullExpressionValue(s32, "open(...)");
                this.f25164a = s32;
                return;
            }
            file.mkdirs();
            s32 = new S3(file, min, ofVar);
            s32.d();
            Intrinsics.checkNotNullExpressionValue(s32, "open(...)");
            this.f25164a = s32;
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public static void a(Context context, long j10) {
        Pair a10 = ms.k.a("size", Long.valueOf(j10));
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a11 = B6.a(context, "web_asset_file_key");
        Intrinsics.checkNotNullParameter("cache_enabled", "key");
        Map o10 = kotlin.collections.p0.o(a10, ms.k.a("state", Boolean.valueOf(a11.f23530a.getBoolean("cache_enabled", false))));
        Pd pd2 = Pd.f23988a;
        Pd.b("LowAvailableSpaceForCache", o10, Td.f24224a);
    }
}
