package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.util.ExceptionWithNoStacktrace;
import com.facebook.imagepipeline.core.DownsampleMode;
import com.facebook.imagepipeline.producers.JobScheduler;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DecodeProducer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDecodeProducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecodeProducer.kt\ncom/facebook/imagepipeline/producers/DecodeProducer\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,550:1\n40#2,9:551\n*S KotlinDebug\n*F\n+ 1 DecodeProducer.kt\ncom/facebook/imagepipeline/producers/DecodeProducer\n*L\n68#1:551,9\n*E\n"})
/* loaded from: classes3.dex */
public final class q implements b1<o2.a<y3.e>> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f15874m = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final n2.a f15875a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Executor f15876b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final w3.b f15877c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final w3.d f15878d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final DownsampleMode f15879e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f15880f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f15881g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final b1<y3.k> f15882h;

    /* renamed from: i  reason: collision with root package name */
    private final int f15883i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final t3.a f15884j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Runnable f15885k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final k2.k<Boolean> f15886l;

    /* compiled from: DecodeProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean b(y3.k kVar, s3.d dVar) {
            if (kVar.getWidth() * kVar.getHeight() * com.facebook.imageutils.d.h(dVar.f66273h) > 104857600) {
                return true;
            }
            return false;
        }

        private a() {
        }
    }

    /* compiled from: DecodeProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private final class b extends d {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ q f15887k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull q qVar, @NotNull n<o2.a<y3.e>> consumer, c1 producerContext, boolean z10, int i10) {
            super(qVar, consumer, producerContext, z10, i10);
            Intrinsics.checkNotNullParameter(consumer, "consumer");
            Intrinsics.checkNotNullParameter(producerContext, "producerContext");
            this.f15887k = qVar;
        }

        @Override // com.facebook.imagepipeline.producers.q.d
        protected synchronized boolean I(@Nullable y3.k kVar, int i10) {
            boolean I;
            if (com.facebook.imagepipeline.producers.c.e(i10)) {
                I = false;
            } else {
                I = super.I(kVar, i10);
            }
            return I;
        }

        @Override // com.facebook.imagepipeline.producers.q.d
        protected int w(@NotNull y3.k encodedImage) {
            Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
            return encodedImage.u();
        }

        @Override // com.facebook.imagepipeline.producers.q.d
        @NotNull
        protected y3.p y() {
            y3.p d10 = y3.o.d(0, false, false);
            Intrinsics.checkNotNullExpressionValue(d10, "of(...)");
            return d10;
        }
    }

    /* compiled from: DecodeProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private final class c extends d {
        @NotNull

        /* renamed from: k  reason: collision with root package name */
        private final w3.e f15888k;
        @NotNull

        /* renamed from: l  reason: collision with root package name */
        private final w3.d f15889l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ q f15890m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull q qVar, @NotNull n<o2.a<y3.e>> consumer, @NotNull c1 producerContext, @NotNull w3.e progressiveJpegParser, w3.d progressiveJpegConfig, boolean z10, int i10) {
            super(qVar, consumer, producerContext, z10, i10);
            Intrinsics.checkNotNullParameter(consumer, "consumer");
            Intrinsics.checkNotNullParameter(producerContext, "producerContext");
            Intrinsics.checkNotNullParameter(progressiveJpegParser, "progressiveJpegParser");
            Intrinsics.checkNotNullParameter(progressiveJpegConfig, "progressiveJpegConfig");
            this.f15890m = qVar;
            this.f15888k = progressiveJpegParser;
            this.f15889l = progressiveJpegConfig;
            H(0);
        }

        @Override // com.facebook.imagepipeline.producers.q.d
        protected synchronized boolean I(@Nullable y3.k kVar, int i10) {
            if (kVar == null) {
                return false;
            }
            try {
                boolean I = super.I(kVar, i10);
                if (!com.facebook.imagepipeline.producers.c.e(i10)) {
                    if (com.facebook.imagepipeline.producers.c.m(i10, 8)) {
                    }
                    return I;
                }
                if (!com.facebook.imagepipeline.producers.c.m(i10, 4) && y3.k.T(kVar) && kVar.q() == com.facebook.imageformat.b.f15604b) {
                    if (!this.f15888k.g(kVar)) {
                        return false;
                    }
                    int d10 = this.f15888k.d();
                    if (d10 <= x()) {
                        return false;
                    }
                    if (d10 < this.f15889l.a(x()) && !this.f15888k.e()) {
                        return false;
                    }
                    H(d10);
                }
                return I;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override // com.facebook.imagepipeline.producers.q.d
        protected int w(@NotNull y3.k encodedImage) {
            Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
            return this.f15888k.c();
        }

        @Override // com.facebook.imagepipeline.producers.q.d
        @NotNull
        protected y3.p y() {
            y3.p b10 = this.f15889l.b(this.f15888k.d());
            Intrinsics.checkNotNullExpressionValue(b10, "getQualityInfo(...)");
            return b10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DecodeProducer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDecodeProducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecodeProducer.kt\ncom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,550:1\n40#2,9:551\n*S KotlinDebug\n*F\n+ 1 DecodeProducer.kt\ncom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder\n*L\n115#1:551,9\n*E\n"})
    /* loaded from: classes3.dex */
    public abstract class d extends u<y3.k, o2.a<y3.e>> {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final c1 f15891c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final String f15892d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final e1 f15893e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final s3.d f15894f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f15895g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final JobScheduler f15896h;

        /* renamed from: i  reason: collision with root package name */
        private int f15897i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ q f15898j;

        /* compiled from: DecodeProducer.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a extends f {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ boolean f15900b;

            a(boolean z10) {
                this.f15900b = z10;
            }

            @Override // com.facebook.imagepipeline.producers.f, com.facebook.imagepipeline.producers.d1
            public void a() {
                if (d.this.f15891c.t()) {
                    d.this.f15896h.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.d1
            public void b() {
                if (this.f15900b) {
                    d.this.z();
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull final q qVar, @NotNull n<o2.a<y3.e>> consumer, c1 producerContext, boolean z10, final int i10) {
            super(consumer);
            Intrinsics.checkNotNullParameter(consumer, "consumer");
            Intrinsics.checkNotNullParameter(producerContext, "producerContext");
            this.f15898j = qVar;
            this.f15891c = producerContext;
            this.f15892d = "ProgressiveDecoder";
            this.f15893e = producerContext.l();
            s3.d i11 = producerContext.o().i();
            Intrinsics.checkNotNullExpressionValue(i11, "getImageDecodeOptions(...)");
            this.f15894f = i11;
            this.f15896h = new JobScheduler(qVar.f(), new JobScheduler.d() { // from class: com.facebook.imagepipeline.producers.r
                @Override // com.facebook.imagepipeline.producers.JobScheduler.d
                public final void a(y3.k kVar, int i12) {
                    q.d.q(q.d.this, qVar, i10, kVar, i12);
                }
            }, i11.f66266a);
            producerContext.p(new a(z10));
        }

        private final void A(Throwable th2) {
            D(true);
            o().onFailure(th2);
        }

        private final void B(y3.e eVar, int i10) {
            o2.a<y3.e> b10 = this.f15898j.c().b(eVar);
            try {
                D(com.facebook.imagepipeline.producers.c.d(i10));
                o().b(b10, i10);
            } finally {
                o2.a.r(b10);
            }
        }

        private final y3.e C(y3.k kVar, int i10, y3.p pVar) {
            boolean z10;
            if (this.f15898j.h() != null && this.f15898j.i().get().booleanValue()) {
                z10 = true;
            } else {
                z10 = false;
            }
            try {
                return this.f15898j.g().decode(kVar, i10, pVar, this.f15894f);
            } catch (OutOfMemoryError e10) {
                if (z10) {
                    Runnable h10 = this.f15898j.h();
                    if (h10 != null) {
                        h10.run();
                    }
                    System.gc();
                    return this.f15898j.g().decode(kVar, i10, pVar, this.f15894f);
                }
                throw e10;
            }
        }

        private final void D(boolean z10) {
            synchronized (this) {
                if (z10) {
                    if (!this.f15895g) {
                        o().c(1.0f);
                        this.f15895g = true;
                        Unit unit = Unit.f60915a;
                        this.f15896h.c();
                    }
                }
            }
        }

        private final void E(y3.k kVar) {
            if (kVar.q() != com.facebook.imageformat.b.f15604b) {
                return;
            }
            kVar.g0(g4.a.c(kVar, com.facebook.imageutils.d.h(this.f15894f.f66273h), 104857600));
        }

        private final void G(y3.k kVar, y3.e eVar, int i10) {
            this.f15891c.putExtra("encoded_width", Integer.valueOf(kVar.getWidth()));
            this.f15891c.putExtra("encoded_height", Integer.valueOf(kVar.getHeight()));
            this.f15891c.putExtra("encoded_size", Integer.valueOf(kVar.u()));
            this.f15891c.putExtra("image_color_space", kVar.o());
            if (eVar instanceof y3.d) {
                this.f15891c.putExtra("bitmap_config", String.valueOf(((y3.d) eVar).B0().getConfig()));
            }
            if (eVar != null) {
                eVar.putExtras(this.f15891c.getExtras());
            }
            this.f15891c.putExtra("last_scan_num", Integer.valueOf(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(d this$0, q this$1, int i10, y3.k kVar, int i11) {
            String str;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            if (kVar != null) {
                ImageRequest o10 = this$0.f15891c.o();
                this$0.f15891c.putExtra("image_format", kVar.q().a());
                Uri w10 = o10.w();
                if (w10 != null) {
                    str = w10.toString();
                } else {
                    str = null;
                }
                kVar.h0(str);
                DownsampleMode h10 = o10.h();
                if (h10 == null) {
                    h10 = this$1.e();
                }
                boolean m10 = com.facebook.imagepipeline.producers.c.m(i11, 16);
                if ((h10 == DownsampleMode.ALWAYS || (h10 == DownsampleMode.AUTO && !m10)) && (this$1.d() || !r2.d.o(o10.w()))) {
                    s3.g u10 = o10.u();
                    Intrinsics.checkNotNullExpressionValue(u10, "getRotationOptions(...)");
                    kVar.g0(g4.a.b(u10, o10.s(), kVar, i10));
                }
                if (this$0.f15891c.k().n().i()) {
                    this$0.E(kVar);
                }
                this$0.u(kVar, i11, this$0.f15897i);
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:28|29|(9:(13:33|(11:37|38|39|40|42|43|(1:45)|46|47|48|49)|62|38|39|40|42|43|(0)|46|47|48|49)|(11:37|38|39|40|42|43|(0)|46|47|48|49)|42|43|(0)|46|47|48|49)|63|62|38|39|40) */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x015d, code lost:
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x015e, code lost:
            r2 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:49:0x013a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void u(y3.k r18, int r19, int r20) {
            /*
                Method dump skipped, instructions count: 417
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.q.d.u(y3.k, int, int):void");
        }

        private final Map<String, String> v(y3.e eVar, long j10, y3.p pVar, boolean z10, String str, String str2, String str3, String str4) {
            Map<String, Object> extras;
            Object obj;
            String str5 = null;
            if (!this.f15893e.f(this.f15891c, "DecodeProducer")) {
                return null;
            }
            String valueOf = String.valueOf(j10);
            String valueOf2 = String.valueOf(pVar.b());
            String valueOf3 = String.valueOf(z10);
            if (eVar != null && (extras = eVar.getExtras()) != null && (obj = extras.get("non_fatal_decode_error")) != null) {
                str5 = obj.toString();
            }
            String str6 = str5;
            if (eVar instanceof y3.f) {
                Bitmap B0 = ((y3.f) eVar).B0();
                Intrinsics.checkNotNullExpressionValue(B0, "getUnderlyingBitmap(...)");
                String str7 = B0.getWidth() + TextureRenderKeys.KEY_IS_X + B0.getHeight();
                HashMap hashMap = new HashMap(8);
                hashMap.put("bitmapSize", str7);
                hashMap.put("queueTime", valueOf);
                hashMap.put("hasGoodQuality", valueOf2);
                hashMap.put("isFinal", valueOf3);
                hashMap.put("encodedImageSize", str2);
                hashMap.put("imageFormat", str);
                hashMap.put("requestedImageSize", str3);
                hashMap.put("sampleSize", str4);
                int byteCount = B0.getByteCount();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(byteCount);
                hashMap.put("byteCount", sb2.toString());
                if (str6 != null) {
                    hashMap.put("non_fatal_decode_error", str6);
                }
                return ImmutableMap.b(hashMap);
            }
            HashMap hashMap2 = new HashMap(7);
            hashMap2.put("queueTime", valueOf);
            hashMap2.put("hasGoodQuality", valueOf2);
            hashMap2.put("isFinal", valueOf3);
            hashMap2.put("encodedImageSize", str2);
            hashMap2.put("imageFormat", str);
            hashMap2.put("requestedImageSize", str3);
            hashMap2.put("sampleSize", str4);
            if (str6 != null) {
                hashMap2.put("non_fatal_decode_error", str6);
            }
            return ImmutableMap.b(hashMap2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void z() {
            D(true);
            o().a();
        }

        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: F */
        public void h(@Nullable y3.k kVar, int i10) {
            if (!f4.b.d()) {
                boolean d10 = com.facebook.imagepipeline.producers.c.d(i10);
                if (d10) {
                    if (kVar == null) {
                        boolean areEqual = Intrinsics.areEqual(this.f15891c.getExtra("cached_value_found"), Boolean.TRUE);
                        if (!this.f15891c.k().n().h() || this.f15891c.v() == ImageRequest.RequestLevel.FULL_FETCH || areEqual) {
                            A(new ExceptionWithNoStacktrace("Encoded image is null."));
                            return;
                        }
                    } else if (!kVar.R()) {
                        A(new ExceptionWithNoStacktrace("Encoded image is not valid."));
                        return;
                    }
                }
                if (!I(kVar, i10)) {
                    return;
                }
                boolean m10 = com.facebook.imagepipeline.producers.c.m(i10, 4);
                if (d10 || m10 || this.f15891c.t()) {
                    this.f15896h.h();
                    return;
                }
                return;
            }
            f4.b.a("DecodeProducer#onNewResultImpl");
            try {
                boolean d11 = com.facebook.imagepipeline.producers.c.d(i10);
                if (d11) {
                    if (kVar == null) {
                        boolean areEqual2 = Intrinsics.areEqual(this.f15891c.getExtra("cached_value_found"), Boolean.TRUE);
                        if (this.f15891c.k().n().h()) {
                            if (this.f15891c.v() != ImageRequest.RequestLevel.FULL_FETCH) {
                                if (areEqual2) {
                                }
                            }
                        }
                        A(new ExceptionWithNoStacktrace("Encoded image is null."));
                        f4.b.b();
                        return;
                    } else if (!kVar.R()) {
                        A(new ExceptionWithNoStacktrace("Encoded image is not valid."));
                        f4.b.b();
                        return;
                    }
                }
                if (!I(kVar, i10)) {
                    f4.b.b();
                    return;
                }
                boolean m11 = com.facebook.imagepipeline.producers.c.m(i10, 4);
                if (d11 || m11 || this.f15891c.t()) {
                    this.f15896h.h();
                }
                Unit unit = Unit.f60915a;
                f4.b.b();
            } catch (Throwable th2) {
                f4.b.b();
                throw th2;
            }
        }

        protected final void H(int i10) {
            this.f15897i = i10;
        }

        protected boolean I(@Nullable y3.k kVar, int i10) {
            return this.f15896h.k(kVar, i10);
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        public void f() {
            z();
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        public void g(@NotNull Throwable t10) {
            Intrinsics.checkNotNullParameter(t10, "t");
            A(t10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        public void i(float f10) {
            super.i(f10 * 0.99f);
        }

        protected abstract int w(@NotNull y3.k kVar);

        protected final int x() {
            return this.f15897i;
        }

        @NotNull
        protected abstract y3.p y();
    }

    public q(@NotNull n2.a byteArrayPool, @NotNull Executor executor, @NotNull w3.b imageDecoder, @NotNull w3.d progressiveJpegConfig, @NotNull DownsampleMode downsampleMode, boolean z10, boolean z11, @NotNull b1<y3.k> inputProducer, int i10, @NotNull t3.a closeableReferenceFactory, @Nullable Runnable runnable, @NotNull k2.k<Boolean> recoverFromDecoderOOM) {
        Intrinsics.checkNotNullParameter(byteArrayPool, "byteArrayPool");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(imageDecoder, "imageDecoder");
        Intrinsics.checkNotNullParameter(progressiveJpegConfig, "progressiveJpegConfig");
        Intrinsics.checkNotNullParameter(downsampleMode, "downsampleMode");
        Intrinsics.checkNotNullParameter(inputProducer, "inputProducer");
        Intrinsics.checkNotNullParameter(closeableReferenceFactory, "closeableReferenceFactory");
        Intrinsics.checkNotNullParameter(recoverFromDecoderOOM, "recoverFromDecoderOOM");
        this.f15875a = byteArrayPool;
        this.f15876b = executor;
        this.f15877c = imageDecoder;
        this.f15878d = progressiveJpegConfig;
        this.f15879e = downsampleMode;
        this.f15880f = z10;
        this.f15881g = z11;
        this.f15882h = inputProducer;
        this.f15883i = i10;
        this.f15884j = closeableReferenceFactory;
        this.f15885k = runnable;
        this.f15886l = recoverFromDecoderOOM;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(@NotNull n<o2.a<y3.e>> consumer, @NotNull c1 context) {
        n<y3.k> cVar;
        n<y3.k> cVar2;
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(context, "context");
        if (!f4.b.d()) {
            ImageRequest o10 = context.o();
            if (!r2.d.o(o10.w()) && !ImageRequestBuilder.s(o10.w())) {
                cVar2 = new b(this, consumer, context, this.f15881g, this.f15883i);
            } else {
                cVar2 = new c(this, consumer, context, new w3.e(this.f15875a), this.f15878d, this.f15881g, this.f15883i);
            }
            this.f15882h.b(cVar2, context);
            return;
        }
        f4.b.a("DecodeProducer#produceResults");
        try {
            ImageRequest o11 = context.o();
            if (!r2.d.o(o11.w()) && !ImageRequestBuilder.s(o11.w())) {
                cVar = new b(this, consumer, context, this.f15881g, this.f15883i);
            } else {
                cVar = new c(this, consumer, context, new w3.e(this.f15875a), this.f15878d, this.f15881g, this.f15883i);
            }
            this.f15882h.b(cVar, context);
            Unit unit = Unit.f60915a;
            f4.b.b();
        } catch (Throwable th2) {
            f4.b.b();
            throw th2;
        }
    }

    @NotNull
    public final t3.a c() {
        return this.f15884j;
    }

    public final boolean d() {
        return this.f15880f;
    }

    @NotNull
    public final DownsampleMode e() {
        return this.f15879e;
    }

    @NotNull
    public final Executor f() {
        return this.f15876b;
    }

    @NotNull
    public final w3.b g() {
        return this.f15877c;
    }

    @Nullable
    public final Runnable h() {
        return this.f15885k;
    }

    @NotNull
    public final k2.k<Boolean> i() {
        return this.f15886l;
    }
}
