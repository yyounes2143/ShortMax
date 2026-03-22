package ca;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import ca.f;
import com.hades.aar.admanager.core.AdFormat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import gt.d0;
import gt.g0;
import gt.q0;
import gt.r1;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nShortAds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortAds.kt\ncom/hades/aar/admanager/core/ShortAds\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,279:1\n47#2,4:280\n4154#3:284\n4254#3,2:285\n4154#3:289\n4254#3,2:290\n1863#4,2:287\n1863#4,2:292\n1755#4,3:294\n1755#4,3:297\n1#5:300\n*S KotlinDebug\n*F\n+ 1 ShortAds.kt\ncom/hades/aar/admanager/core/ShortAds\n*L\n49#1:280,4\n61#1:284\n61#1:285,2\n66#1:289\n66#1:290,2\n61#1:287,2\n66#1:292,2\n73#1:294,3\n77#1:297,3\n*E\n"})
/* loaded from: classes5.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final k f3414a = new k();

    /* renamed from: b  reason: collision with root package name */
    public static final ConcurrentHashMap f3415b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final ArrayList f3416c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public static final ArrayList f3417d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public static d.f f3418e;

    /* renamed from: f  reason: collision with root package name */
    public static ha.a f3419f;

    public static /* synthetic */ void k(k kVar, List list, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        }
        kVar.j(list, j10);
    }

    public static /* synthetic */ void m(k kVar, String str, f fVar, e eVar, Long l10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            fVar = null;
        }
        if ((i10 & 4) != 0) {
            eVar = null;
        }
        if ((i10 & 8) != 0) {
            l10 = null;
        }
        kVar.l(str, fVar, eVar, l10);
    }

    public static /* synthetic */ void p(k kVar, String str, f fVar, e eVar, Long l10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            fVar = null;
        }
        if ((i10 & 4) != 0) {
            eVar = null;
        }
        if ((i10 & 8) != 0) {
            l10 = null;
        }
        kVar.n(str, fVar, eVar, l10);
    }

    @Nullable
    public final d.f a() {
        if (f3418e == null) {
            ga.a.f52235a.c("AdManagerAdUtil", "mCurrentAdDelegate is null Call setLoader first");
        }
        return f3418e;
    }

    public final void b(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        d.f a10 = a();
        if (a10 != null) {
            a10.a(view);
        }
    }

    @NotNull
    public final String c() {
        String e10;
        d.f fVar = f3418e;
        if (fVar == null || (e10 = fVar.e()) == null) {
            return "";
        }
        return e10;
    }

    @NotNull
    public final List<d> d(@NotNull AdFormat... format) {
        Intrinsics.checkNotNullParameter(format, "format");
        d.f a10 = a();
        if (a10 != null) {
            return a10.a((AdFormat[]) Arrays.copyOf(format, format.length));
        }
        return new ArrayList();
    }

    @Nullable
    public final ha.a e() {
        return f3419f;
    }

    @SuppressLint({"HardwareIds"})
    @NotNull
    public final String f(@NotNull Context context) {
        Exception e10;
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Log.e("getTestDeviceID", "getTestDeviceID start");
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            Intrinsics.checkNotNullExpressionValue(string, "getString(context.conten…ttings.Secure.ANDROID_ID)");
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            byte[] bytes = string.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            int length = digest.length;
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = digest[i10];
                if (i11 < 0) {
                    i11 += 256;
                }
                if (i11 < 16) {
                    stringBuffer.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                stringBuffer.append(Integer.toHexString(i11));
            }
            String stringBuffer2 = stringBuffer.toString();
            Intrinsics.checkNotNullExpressionValue(stringBuffer2, "buf.toString()");
            Locale ROOT = Locale.ROOT;
            Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
            str = stringBuffer2.toUpperCase(ROOT);
            Intrinsics.checkNotNullExpressionValue(str, "toUpperCase(...)");
        } catch (Exception e11) {
            e10 = e11;
            str = "";
        }
        try {
            ga.a aVar = ga.a.f52235a;
            aVar.b("AdManagerAdUtil", "getTestDeviceID=(" + str + ')');
        } catch (Exception e12) {
            e10 = e12;
            Log.e("getTestDeviceID", "getTestDeviceID exception -> " + e10.getMessage() + ' ');
            return str;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (r0.equals("live.shorttv.dramarush.android") == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
        if (r0.equals("com.lab.ad.test") != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
        if (r0.equals("live.shorttv.apps") == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005a, code lost:
        r0 = ca.k.f3418e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
        if (r0 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
        r0 = r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (r0 == r5) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
        r0 = ca.k.f3415b;
        r1 = (d.f) r0.get(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0070, code lost:
        ca.k.f3418e = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
        if (c.h.f2839a[r5.ordinal()] != 1) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007e, code lost:
        r1 = new f.n(r4, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
        r1 = new e.k(r4, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
        ca.k.f3418e = r1;
        r0.put(r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0026, code lost:
        if (r0.equals("com.shortsfactory.dramaplayer") == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        if (r0.equals("com.startshorts.androidplayer") == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(@org.jetbrains.annotations.NotNull android.content.Context r4, @org.jetbrains.annotations.NotNull com.hades.aar.admanager.core.AdAggregatedSdk r5, @org.jetbrains.annotations.NotNull ca.a r6) {
        /*
            r3 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "adType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "config"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = r4.getPackageName()
            java.lang.String r1 = "context.packageName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            int r1 = r0.hashCode()
            switch(r1) {
                case -1440692188: goto L44;
                case 609313583: goto L3b;
                case 1104671182: goto L32;
                case 1286982926: goto L29;
                case 1652912672: goto L20;
                default: goto L1f;
            }
        L1f:
            goto L4c
        L20:
            java.lang.String r1 = "com.shortsfactory.dramaplayer"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L5a
            goto L4c
        L29:
            java.lang.String r1 = "com.startshorts.androidplayer"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L5a
            goto L4c
        L32:
            java.lang.String r1 = "live.shorttv.dramarush.android"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L5a
            goto L4c
        L3b:
            java.lang.String r1 = "com.lab.ad.test"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L4c
            goto L5a
        L44:
            java.lang.String r1 = "live.shorttv.apps"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L5a
        L4c:
            ga.a r4 = ga.a.f52235a
            java.lang.String r5 = "invalid packageName -> "
            java.lang.String r5 = r5.concat(r0)
            java.lang.String r6 = "AdManagerAdUtil"
            r4.c(r6, r5)
            return
        L5a:
            d.f r0 = ca.k.f3418e
            if (r0 == 0) goto L63
            com.hades.aar.admanager.core.AdAggregatedSdk r0 = r0.a()
            goto L64
        L63:
            r0 = 0
        L64:
            if (r0 == r5) goto L8e
            java.util.concurrent.ConcurrentHashMap r0 = ca.k.f3415b
            java.lang.Object r1 = r0.get(r5)
            d.f r1 = (d.f) r1
            if (r1 == 0) goto L73
            ca.k.f3418e = r1
            goto L8e
        L73:
            int[] r1 = c.h.f2839a
            int r2 = r5.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 != r2) goto L84
            f.n r1 = new f.n
            r1.<init>(r4, r6)
            goto L89
        L84:
            e.k r1 = new e.k
            r1.<init>(r4, r6)
        L89:
            ca.k.f3418e = r1
            r0.put(r5, r1)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ca.k.g(android.content.Context, com.hades.aar.admanager.core.AdAggregatedSdk, ca.a):void");
    }

    public final boolean h(@NotNull List<AdFormat> formats) {
        Intrinsics.checkNotNullParameter(formats, "formats");
        d.f a10 = a();
        if (a10 != null) {
            return a10.a(formats);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(@org.jetbrains.annotations.NotNull com.hades.aar.admanager.core.AdFormat r6) {
        /*
            r5 = this;
            java.lang.String r0 = "adFormat"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.util.ArrayList r0 = ca.k.f3417d
            r1 = 1
            if (r0 == 0) goto L11
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L11
            goto L28
        L11:
            java.util.Iterator r0 = r0.iterator()
        L15:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L28
            java.lang.Object r2 = r0.next()
            com.hades.aar.admanager.core.AdFormat r2 = (com.hades.aar.admanager.core.AdFormat) r2
            if (r2 == r6) goto L27
            com.hades.aar.admanager.core.AdFormat r3 = com.hades.aar.admanager.core.AdFormat.ALL
            if (r2 != r3) goto L15
        L27:
            return r1
        L28:
            d.f r0 = r5.a()
            r2 = 0
            if (r0 == 0) goto L34
            boolean r0 = r0.d()
            goto L35
        L34:
            r0 = r2
        L35:
            if (r0 == 0) goto L64
            java.util.ArrayList r0 = ca.k.f3416c
            if (r0 == 0) goto L42
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L42
            goto L60
        L42:
            java.util.Iterator r0 = r0.iterator()
        L46:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L60
            java.lang.Object r3 = r0.next()
            com.hades.aar.admanager.core.AdFormat r3 = (com.hades.aar.admanager.core.AdFormat) r3
            if (r3 == r6) goto L5b
            com.hades.aar.admanager.core.AdFormat r4 = com.hades.aar.admanager.core.AdFormat.ALL
            if (r3 != r4) goto L59
            goto L5b
        L59:
            r3 = r2
            goto L5c
        L5b:
            r3 = r1
        L5c:
            if (r3 == 0) goto L46
            r6 = r1
            goto L61
        L60:
            r6 = r2
        L61:
            if (r6 == 0) goto L64
            goto L65
        L64:
            r1 = r2
        L65:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ca.k.i(com.hades.aar.admanager.core.AdFormat):boolean");
    }

    public final void j(@NotNull List<e> adUnitIds, long j10) {
        Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
        d.f a10 = a();
        if (a10 != null) {
            a10.a("loadAdSync -> " + adUnitIds);
        }
        if (a10 != null) {
            a10.d(adUnitIds, j10, kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()).plus(new c.j(d0.D8, "loadAdSync"))));
        }
    }

    public final void l(@NotNull String msg, @Nullable f fVar, @Nullable e eVar, @Nullable Long l10) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        o(msg, true, fVar, eVar, l10);
    }

    public final void n(@NotNull String msg, @Nullable f fVar, @Nullable e eVar, @Nullable Long l10) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        o(msg, false, fVar, eVar, l10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if (r10 != null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b A[Catch: Exception -> 0x0031, TryCatch #0 {Exception -> 0x0031, blocks: (B:3:0x000d, B:6:0x0019, B:12:0x0034, B:14:0x0045, B:16:0x004b, B:19:0x005a, B:21:0x006b, B:25:0x007b, B:27:0x0084, B:28:0x008a), top: B:32:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0084 A[Catch: Exception -> 0x0031, TryCatch #0 {Exception -> 0x0031, blocks: (B:3:0x000d, B:6:0x0019, B:12:0x0034, B:14:0x0045, B:16:0x004b, B:19:0x005a, B:21:0x006b, B:25:0x007b, B:27:0x0084, B:28:0x008a), top: B:32:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008a A[Catch: Exception -> 0x0031, TRY_LEAVE, TryCatch #0 {Exception -> 0x0031, blocks: (B:3:0x000d, B:6:0x0019, B:12:0x0034, B:14:0x0045, B:16:0x004b, B:19:0x005a, B:21:0x006b, B:25:0x007b, B:27:0x0084, B:28:0x008a), top: B:32:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o(@org.jetbrains.annotations.NotNull java.lang.String r8, boolean r9, @org.jetbrains.annotations.Nullable ca.f r10, @org.jetbrains.annotations.Nullable ca.e r11, @org.jetbrains.annotations.Nullable java.lang.Long r12) {
        /*
            r7 = this;
            java.lang.String r0 = "AdManagerAdUtil"
            java.lang.String r1 = "loadParam="
            java.lang.String r2 = "request="
            java.lang.String r3 = ",input_timeout="
            java.lang.String r4 = "msg"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r4)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L31
            r4.<init>()     // Catch: java.lang.Exception -> L31
            r4.append(r8)     // Catch: java.lang.Exception -> L31
            java.lang.String r8 = ""
            if (r12 == 0) goto L33
            long r5 = r12.longValue()     // Catch: java.lang.Exception -> L31
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L31
            r12.<init>(r3)     // Catch: java.lang.Exception -> L31
            r12.append(r5)     // Catch: java.lang.Exception -> L31
            java.lang.String r3 = "ms"
            r12.append(r3)     // Catch: java.lang.Exception -> L31
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Exception -> L31
            if (r12 != 0) goto L34
            goto L33
        L31:
            r8 = move-exception
            goto L90
        L33:
            r12 = r8
        L34:
            r4.append(r12)     // Catch: java.lang.Exception -> L31
            java.lang.String r12 = r4.toString()     // Catch: java.lang.Exception -> L31
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L31
            r3.<init>()     // Catch: java.lang.Exception -> L31
            r3.append(r12)     // Catch: java.lang.Exception -> L31
            if (r10 == 0) goto L59
            java.util.List r10 = r10.f()     // Catch: java.lang.Exception -> L31
            if (r10 == 0) goto L59
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L31
            r12.<init>(r2)     // Catch: java.lang.Exception -> L31
            r12.append(r10)     // Catch: java.lang.Exception -> L31
            java.lang.String r10 = r12.toString()     // Catch: java.lang.Exception -> L31
            if (r10 != 0) goto L5a
        L59:
            r10 = r8
        L5a:
            r3.append(r10)     // Catch: java.lang.Exception -> L31
            java.lang.String r10 = r3.toString()     // Catch: java.lang.Exception -> L31
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L31
            r12.<init>()     // Catch: java.lang.Exception -> L31
            r12.append(r10)     // Catch: java.lang.Exception -> L31
            if (r11 == 0) goto L7b
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L31
            r10.<init>(r1)     // Catch: java.lang.Exception -> L31
            r10.append(r11)     // Catch: java.lang.Exception -> L31
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Exception -> L31
            if (r10 != 0) goto L7a
            goto L7b
        L7a:
            r8 = r10
        L7b:
            r12.append(r8)     // Catch: java.lang.Exception -> L31
            java.lang.String r8 = r12.toString()     // Catch: java.lang.Exception -> L31
            if (r9 == 0) goto L8a
            ga.a r9 = ga.a.f52235a     // Catch: java.lang.Exception -> L31
            r9.c(r0, r8)     // Catch: java.lang.Exception -> L31
            goto La7
        L8a:
            ga.a r9 = ga.a.f52235a     // Catch: java.lang.Exception -> L31
            r9.d(r0, r8)     // Catch: java.lang.Exception -> L31
            goto La7
        L90:
            ga.a r9 = ga.a.f52235a
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r11 = "logInfo exception -> "
            r10.<init>(r11)
            java.lang.String r8 = r8.getMessage()
            r10.append(r8)
            java.lang.String r8 = r10.toString()
            r9.c(r0, r8)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ca.k.o(java.lang.String, boolean, ca.f, ca.e, java.lang.Long):void");
    }

    public final void q(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        d.f fVar = f3418e;
        if (fVar == null) {
            ga.a.f52235a.c("AdManagerAdUtil", "openAdInspector failed -> mCurrentAdDelegate is null");
        } else {
            fVar.a(context);
        }
    }

    public final void r(@NotNull List<e> adUnitIds, int i10, @Nullable da.c cVar) {
        Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
        d.f a10 = a();
        if (a10 != null) {
            a10.a("preloadAd -> " + adUnitIds + "\nbufferSize:" + i10);
        }
        if (a10 != null) {
            a10.c(adUnitIds, i10, cVar);
        }
    }

    public final void s() {
        d.f a10 = a();
        if (a10 != null) {
            a10.c();
        }
    }

    public final void t(@Nullable ha.a aVar) {
        f3419f = aVar;
    }

    @NotNull
    public final g0 u(@NotNull f adRequestParam) {
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        d.f a10 = a();
        if (a10 != null) {
            a10.a("show " + adRequestParam);
        }
        g0 a11 = kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()).plus(new c.j(d0.D8, "show")));
        if (adRequestParam.f().isEmpty()) {
            m(this, "show failed -> adRequestParam.adUnitParams.isEmpty(),", adRequestParam, null, null, 12, null);
            f.e n10 = adRequestParam.n();
            if (n10 != null) {
                n10.a(null, "show failed -> adRequestParam.adUnitParams.isEmpty(),");
            }
            adRequestParam.p();
            return a11;
        } else if (!i.f3408a.p()) {
            m(this, "show failed -> GDPRManager.isConsented = false,", adRequestParam, null, null, 12, null);
            f.e n11 = adRequestParam.n();
            if (n11 != null) {
                n11.a(null, "show failed -> GDPRManager.isConsented = false,");
            }
            adRequestParam.p();
            return a11;
        } else {
            if (a10 != null) {
                a10.b(adRequestParam, a11);
            }
            return a11;
        }
    }

    public final void v(@NotNull d adInfo, @NotNull f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        d.f a10 = a();
        if (a10 == null) {
            return;
        }
        try {
            a10.a("showInternal");
            switch (c.h.f2840b[adInfo.h().ordinal()]) {
                case 1:
                    a10.f().c(adInfo, adRequestParam);
                    break;
                case 2:
                    a10.f().a(adInfo, adRequestParam);
                    break;
                case 3:
                    a10.f().f(adInfo, adRequestParam);
                    break;
                case 4:
                    a10.f().b(adInfo, adRequestParam);
                    break;
                case 5:
                    a10.f().d(adInfo, adRequestParam);
                    break;
                case 6:
                    a10.f().e(adInfo, adRequestParam);
                    break;
            }
        } catch (Exception e10) {
            ga.a aVar = ga.a.f52235a;
            aVar.c("AdManagerAdUtil", "showInternal exception -> " + e10.getMessage());
            d.a r10 = a10.b().r();
            String message = e10.getMessage();
            r10.getClass();
            d.a.f(adInfo, message, adRequestParam);
        }
    }
}
