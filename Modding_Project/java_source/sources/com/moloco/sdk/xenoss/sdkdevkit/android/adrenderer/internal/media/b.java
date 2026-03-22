package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h;
import com.ss.ttm.player.MediaPlayer;
import io.ktor.client.HttpClient;
import io.ktor.client.plugins.HttpRequestRetry;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpResponseKt;
import io.ktor.client.statement.HttpStatement;
import java.io.File;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nChunkedMediaDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkedMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/ChunkedMediaDownloaderImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,296:1\n332#2:297\n225#2:298\n99#2,2:299\n22#2:301\n39#3:302\n*S KotlinDebug\n*F\n+ 1 ChunkedMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/ChunkedMediaDownloaderImpl\n*L\n190#1:297\n190#1:298\n190#1:299,2\n190#1:301\n278#1:302\n*E\n"})
/* loaded from: classes6.dex */
public final class b implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final o f34082a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f34083b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.error.b f34084c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final HttpClient f34085d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final String f34086e;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.ChunkedMediaDownloaderImpl", f = "ChunkedMediaDownloader.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE, MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE}, m = "downloadFullFile")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f34087h;

        /* renamed from: i  reason: collision with root package name */
        public Object f34088i;

        /* renamed from: j  reason: collision with root package name */
        public Object f34089j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f34090k;

        /* renamed from: m  reason: collision with root package name */
        public int f34092m;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f34090k = obj;
            this.f34092m |= Integer.MIN_VALUE;
            return b.this.l(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.ChunkedMediaDownloaderImpl$downloadMedia$2", f = "ChunkedMediaDownloader.kt", l = {94, 105, 137, 148}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0508b extends SuspendLambda implements Function2<gt.g0, rs.c<? super n.a>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34093h;

        /* renamed from: i  reason: collision with root package name */
        public int f34094i;

        /* renamed from: j  reason: collision with root package name */
        public int f34095j;

        /* renamed from: k  reason: collision with root package name */
        public int f34096k;

        /* renamed from: l  reason: collision with root package name */
        public long f34097l;

        /* renamed from: m  reason: collision with root package name */
        public Object f34098m;

        /* renamed from: n  reason: collision with root package name */
        public int f34099n;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ String f34101p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ File f34102q;

        /* renamed from: r  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a f34103r;

        /* renamed from: s  reason: collision with root package name */
        public final /* synthetic */ String f34104s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0508b(String str, File file, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a aVar, String str2, rs.c<? super C0508b> cVar) {
            super(2, cVar);
            this.f34101p = str;
            this.f34102q = file;
            this.f34103r = aVar;
            this.f34104s = str2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super n.a> cVar) {
            return ((C0508b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0508b(this.f34101p, this.f34102q, this.f34103r, this.f34104s, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x0430 A[Catch: Exception -> 0x0034, TRY_LEAVE, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0108 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0142 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0162 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0172 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0195 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x01a6 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0214 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0215 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0372 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0389  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0390 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:92:0x03a6 A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:9:0x0028, B:48:0x0172, B:51:0x018d, B:53:0x0195, B:55:0x0199, B:56:0x01a3, B:58:0x01a6, B:62:0x0204, B:65:0x0215, B:67:0x0270, B:69:0x02c7, B:72:0x02d4, B:78:0x0318, B:82:0x034d, B:86:0x036e, B:88:0x0372, B:91:0x0390, B:92:0x03a6, B:77:0x02fc, B:95:0x03c7, B:96:0x03cc, B:97:0x03cd, B:102:0x0430, B:16:0x004e, B:19:0x006b, B:22:0x0084, B:26:0x0095, B:27:0x00bb, B:29:0x00c5, B:31:0x00d7, B:33:0x00df, B:39:0x0104, B:41:0x0108, B:42:0x0111, B:44:0x0142, B:46:0x0162, B:37:0x00e7), top: B:110:0x0012, inners: #0 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0425 -> B:101:0x0429). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x03bb -> B:94:0x03c3). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r43) {
            /*
                Method dump skipped, instructions count: 1142
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b.C0508b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.ChunkedMediaDownloaderImpl", f = "ChunkedMediaDownloader.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE}, m = "writeChunkToFile")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f34105h;

        /* renamed from: i  reason: collision with root package name */
        public Object f34106i;

        /* renamed from: j  reason: collision with root package name */
        public Object f34107j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f34108k;

        /* renamed from: m  reason: collision with root package name */
        public int f34110m;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f34108k = obj;
            this.f34110m |= Integer.MIN_VALUE;
            return b.this.x(null, null, this);
        }
    }

    public b(@NotNull o mediaConfig, @NotNull g0 connectivityService, @NotNull com.moloco.sdk.internal.error.b errorReportingService, @NotNull HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(mediaConfig, "mediaConfig");
        Intrinsics.checkNotNullParameter(connectivityService, "connectivityService");
        Intrinsics.checkNotNullParameter(errorReportingService, "errorReportingService");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.f34082a = mediaConfig;
        this.f34083b = connectivityService;
        this.f34084c = errorReportingService;
        this.f34085d = httpClient;
        this.f34086e = "ChunkedMediaDownloader";
    }

    public static final long d(HttpRequestRetry.a delayMillis, int i10) {
        Intrinsics.checkNotNullParameter(delayMillis, "$this$delayMillis");
        return 100L;
    }

    public static final Unit o(long j10, b bVar, int i10, String str, wr.g headers) {
        Intrinsics.checkNotNullParameter(headers, "$this$headers");
        String str2 = "bytes=" + j10 + '-' + Math.min(j10 + bVar.f34082a.a(), i10);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str3 = bVar.f34086e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Adding ");
        wr.i iVar = wr.i.f70141a;
        sb2.append(iVar.s());
        sb2.append(" header: ");
        sb2.append(str2);
        MolocoLogger.info$default(molocoLogger, str3, sb2.toString(), null, false, 12, null);
        headers.f(iVar.s(), str2);
        if (str != null) {
            MolocoLogger.info$default(molocoLogger, bVar.f34086e, "Adding " + iVar.o() + " header: " + str, null, false, 12, null);
            headers.f(iVar.o(), str);
            MolocoLogger.info$default(molocoLogger, bVar.f34086e, "Adding " + iVar.l() + " header: " + str, null, false, 12, null);
            headers.f(iVar.l(), str);
        }
        return Unit.f60915a;
    }

    public static final Unit p(final b bVar, HttpRequestRetry.Configuration retry) {
        Intrinsics.checkNotNullParameter(retry, "$this$retry");
        retry.u(10);
        HttpRequestRetry.Configuration.c(retry, false, new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.f
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Long.valueOf(b.d((HttpRequestRetry.a) obj, ((Integer) obj2).intValue()));
            }
        }, 1, null);
        retry.o(10, true);
        retry.s(10);
        retry.l(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.g
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return b.q(b.this, (HttpRequestRetry.b) obj, (HttpRequestBuilder) obj2);
            }
        });
        return Unit.f60915a;
    }

    public static final Unit q(b bVar, HttpRequestRetry.b modifyRequest, HttpRequestBuilder it) {
        Intrinsics.checkNotNullParameter(modifyRequest, "$this$modifyRequest");
        Intrinsics.checkNotNullParameter(it, "it");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str = bVar.f34086e;
        MolocoLogger.info$default(molocoLogger, str, "Retry attempt #" + modifyRequest.b() + " for " + modifyRequest.a().i(), null, false, 12, null);
        return Unit.f60915a;
    }

    public final String C(File file) {
        File z10 = z(file);
        if (!z10.exists()) {
            return null;
        }
        return ws.f.m(z10, null, 1, null);
    }

    public final String D(File file) {
        File E = E(file);
        if (!E.exists()) {
            return null;
        }
        return ws.f.m(E, null, 1, null);
    }

    public final File E(File file) {
        String parent = file.getParent();
        return new File(parent, file.getName() + ".range");
    }

    public final void F(File file) {
        z(file).delete();
    }

    public final void G(File file) {
        E(file).delete();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.a
    public boolean a(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (file.exists() && !E(file).exists()) {
            return true;
        }
        return false;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.a
    public boolean b(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (file.exists() && E(file).exists()) {
            return true;
        }
        return false;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.a
    @Nullable
    public Object c(@NotNull String str, @NotNull File file, @NotNull String str2, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a aVar, @NotNull rs.c<? super n.a> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new C0508b(str, file, aVar, str2, null), cVar);
    }

    public final n.a h(File file, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a aVar) {
        F(file);
        G(file);
        if (aVar != null) {
            aVar.b(new h.a(file));
        }
        return new n.a.b(file);
    }

    public final n.a i(File file, tr.c cVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a aVar) {
        int e02 = cVar.e().e0();
        if (400 <= e02 && e02 < 500) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str = this.f34086e;
            MolocoLogger.error$default(molocoLogger, str, "Failed to fetch media from url: " + HttpResponseKt.e(cVar).getUrl() + ", status: " + cVar.e(), null, false, 12, null);
            if (aVar != null) {
                aVar.a(new h.b(n.a.AbstractC0509a.e.f34174a));
            }
            return n.a.AbstractC0509a.e.f34174a;
        } else if (500 <= e02 && e02 < 600) {
            MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
            String str2 = this.f34086e;
            MolocoLogger.error$default(molocoLogger2, str2, "Failed to fetch media from url: " + HttpResponseKt.e(cVar).getUrl() + ", status: " + cVar.e(), null, false, 12, null);
            if (aVar != null) {
                aVar.a(new h.b(n.a.AbstractC0509a.h.f34177a));
            }
            return n.a.AbstractC0509a.h.f34177a;
        } else {
            return new n.a.b(file);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(java.io.File r18, tr.c r19, rs.c<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b.l(java.io.File, tr.c, rs.c):java.lang.Object");
    }

    public final Object m(String str, final long j10, final int i10, final String str2, rs.c<? super tr.c> cVar) {
        HttpClient httpClient = this.f34085d;
        HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
        io.ktor.client.request.a.b(httpRequestBuilder, str);
        io.ktor.client.plugins.c.i(httpRequestBuilder, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.p(b.this, (HttpRequestRetry.Configuration) obj);
            }
        });
        io.ktor.client.request.a.a(httpRequestBuilder, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.o(j10, this, i10, str2, (wr.g) obj);
            }
        });
        httpRequestBuilder.n(wr.m.f70193b.a());
        return new HttpStatement(httpRequestBuilder, httpClient).d(cVar);
    }

    public final void t(File file, String str) {
        ws.f.p(E(file), str, null, 2, null);
    }

    public final void u(File file, tr.c cVar) {
        wr.f a10 = cVar.a();
        wr.i iVar = wr.i.f70141a;
        String str = a10.get(iVar.l());
        if (str != null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str2 = this.f34086e;
            MolocoLogger.info$default(molocoLogger, str2, iVar.l() + ": " + str, null, false, 12, null);
            ws.f.p(z(file), str, null, 2, null);
            return;
        }
        MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
        String str3 = this.f34086e;
        MolocoLogger.warn$default(molocoLogger2, str3, "No " + iVar.l() + " in header", null, false, 12, null);
        F(file);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095 A[LOOP:0: B:27:0x008f->B:29:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x008a -> B:26:0x008d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object x(java.io.File r19, tr.c r20, rs.c<? super kotlin.Unit> r21) {
        /*
            r18 = this;
            r0 = r18
            r1 = r21
            boolean r2 = r1 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b.c
            if (r2 == 0) goto L17
            r2 = r1
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b$c r2 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b.c) r2
            int r3 = r2.f34110m
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f34110m = r3
            goto L1c
        L17:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b$c r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b$c
            r2.<init>(r1)
        L1c:
            java.lang.Object r1 = r2.f34108k
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r2.f34110m
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L55
            if (r4 == r6) goto L44
            if (r4 != r5) goto L3c
            java.lang.Object r4 = r2.f34107j
            io.ktor.utils.io.ByteReadChannel r4 = (io.ktor.utils.io.ByteReadChannel) r4
            java.lang.Object r7 = r2.f34106i
            java.io.File r7 = (java.io.File) r7
            java.lang.Object r8 = r2.f34105h
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b r8 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b) r8
            kotlin.f.b(r1)
            goto L8d
        L3c:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L44:
            java.lang.Object r4 = r2.f34106i
            java.io.File r4 = (java.io.File) r4
            java.lang.Object r7 = r2.f34105h
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b r7 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b) r7
            kotlin.f.b(r1)
            r17 = r4
            r4 = r1
            r1 = r17
            goto L6a
        L55:
            kotlin.f.b(r1)
            r2.f34105h = r0
            r1 = r19
            r2.f34106i = r1
            r2.f34110m = r6
            r4 = r20
            java.lang.Object r4 = io.ktor.client.statement.HttpResponseKt.a(r4, r2)
            if (r4 != r3) goto L69
            return r3
        L69:
            r7 = r0
        L6a:
            io.ktor.utils.io.ByteReadChannel r4 = (io.ktor.utils.io.ByteReadChannel) r4
            r8 = r7
            r7 = r1
        L6e:
            boolean r1 = r4.l()
            if (r1 != 0) goto Lc6
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o r1 = r8.f34082a
            int r1 = r1.a()
            long r9 = (long) r1
            r11 = 2
            long r9 = r9 * r11
            r2.f34105h = r8
            r2.f34106i = r7
            r2.f34107j = r4
            r2.f34110m = r5
            java.lang.Object r1 = r4.k(r9, r2)
            if (r1 != r3) goto L8d
            return r3
        L8d:
            hs.j r1 = (hs.j) r1
        L8f:
            boolean r9 = r1.P()
            if (r9 != 0) goto L6e
            r9 = 0
            r10 = 0
            byte[] r9 = hs.q.c(r1, r9, r6, r10)
            ws.f.d(r7, r9)
            com.moloco.sdk.internal.MolocoLogger r10 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            java.lang.String r11 = r8.f34086e
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r12 = "dst file length: "
            r9.append(r12)
            long r12 = r7.length()
            r9.append(r12)
            java.lang.String r12 = " bytes"
            r9.append(r12)
            java.lang.String r12 = r9.toString()
            r15 = 12
            r16 = 0
            r13 = 0
            r14 = 0
            com.moloco.sdk.internal.MolocoLogger.info$default(r10, r11, r12, r13, r14, r15, r16)
            goto L8f
        Lc6:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b.x(java.io.File, tr.c, rs.c):java.lang.Object");
    }

    public final File z(File file) {
        String parent = file.getParent();
        return new File(parent, file.getName() + ".etag");
    }
}
