package kk;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import c3.q;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.huawei.hms.framework.common.ContainerUtils;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.ResourceHandler;
import fk.p;
import fk.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FrescoUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFrescoUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrescoUtil.kt\ncom/startshorts/androidplayer/utils/fresco/FrescoUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,408:1\n1863#2,2:409\n*S KotlinDebug\n*F\n+ 1 FrescoUtil.kt\ncom/startshorts/androidplayer/utils/fresco/FrescoUtil\n*L\n305#1:409,2\n*E\n"})
/* loaded from: classes7.dex */
public final class f {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f60750d;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f60747a = new f();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i<List<String>> f60748b = kotlin.c.b(new Function0() { // from class: kk.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List p10;
            p10 = f.p();
            return p10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i<ConcurrentHashMap<String, a>> f60749c = kotlin.c.b(new Function0() { // from class: kk.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap q10;
            q10 = f.q();
            return q10;
        }
    });
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Object f60751e = new Object();

    /* compiled from: FrescoUtil.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final com.facebook.datasource.b<Void> f60752a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f60753b;

        public a(@NotNull com.facebook.datasource.b<Void> dataSource, boolean z10) {
            Intrinsics.checkNotNullParameter(dataSource, "dataSource");
            this.f60752a = dataSource;
            this.f60753b = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f60752a, aVar.f60752a) && this.f60753b == aVar.f60753b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f60752a.hashCode() * 31) + Boolean.hashCode(this.f60753b);
        }

        @NotNull
        public String toString() {
            return "CancelAbleDataSource(dataSource=" + this.f60752a + ", cancellable=" + this.f60753b + ')';
        }
    }

    /* compiled from: FrescoUtil.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f60754a;

        b(ImageRequest imageRequest) {
            this.f60754a = imageRequest;
        }

        @Override // z2.b
        public void c(String str, Throwable th2) {
            String message;
            f fVar = f.f60747a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("showImage failed -> url(");
            sb2.append(this.f60754a.w());
            sb2.append(") reason(");
            if (th2 == null) {
                message = "null";
            } else {
                message = th2.getMessage();
            }
            sb2.append(message);
            sb2.append(')');
            fVar.f(sb2.toString());
        }
    }

    /* compiled from: FrescoUtil.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFrescoUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrescoUtil.kt\ncom/startshorts/androidplayer/utils/fresco/FrescoUtil$prefetchToBitmapCache$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,408:1\n1#2:409\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c extends u3.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List<Bitmap> f60755a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AtomicInteger f60756b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List<ImageRequest> f60757c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function1<List<Bitmap>, Unit> f60758d;

        /* JADX WARN: Multi-variable type inference failed */
        c(List<Bitmap> list, AtomicInteger atomicInteger, List<? extends ImageRequest> list2, Function1<? super List<Bitmap>, Unit> function1) {
            this.f60755a = list;
            this.f60756b = atomicInteger;
            this.f60757c = list2;
            this.f60758d = function1;
        }

        @Override // com.facebook.datasource.a
        protected void e(com.facebook.datasource.b<o2.a<y3.e>> dataSource) {
            Function1<List<Bitmap>, Unit> function1;
            Intrinsics.checkNotNullParameter(dataSource, "dataSource");
            Logger logger = Logger.f41511a;
            logger.e("FrescoUtil", "prefetchToBitmapCache failed -> " + f.f60747a.l(dataSource));
            if (this.f60756b.addAndGet(1) == this.f60757c.size() && (function1 = this.f60758d) != null) {
                function1.invoke(this.f60755a);
            }
        }

        @Override // u3.b
        protected void g(Bitmap bitmap) {
            Function1<List<Bitmap>, Unit> function1;
            List<Bitmap> list = this.f60755a;
            synchronized (list) {
                if (bitmap != null) {
                    list.add(bitmap);
                }
            }
            if (this.f60756b.addAndGet(1) == this.f60757c.size() && (function1 = this.f60758d) != null) {
                function1.invoke(this.f60755a);
            }
        }
    }

    /* compiled from: FrescoUtil.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f60759a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f60760b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ p f60761c;

        d(String str, String str2, p pVar) {
            this.f60759a = str;
            this.f60760b = str2;
            this.f60761c = pVar;
        }

        @Override // a4.e
        public void b(ImageRequest request, String requestId, boolean z10) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                logger.h("FrescoUtil", "prefetch success -> url(" + this.f60759a + ") cacheKey(" + this.f60760b + ") costTime(" + this.f60761c.b() + "ms)");
            }
            ((ConcurrentHashMap) f.f60749c.getValue()).remove(this.f60760b);
        }

        @Override // a4.e
        public void e(ImageRequest imageRequest, Object obj, String str, boolean z10) {
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                logger.h("FrescoUtil", "start prefetch -> url(" + this.f60759a + ") cacheKey(" + this.f60760b + ')');
            }
        }

        @Override // a4.e
        public void j(ImageRequest request, String requestId, Throwable th2, boolean z10) {
            String str;
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("prefetch failed -> url(");
            sb2.append(this.f60759a);
            sb2.append(") cacheKey(");
            sb2.append(this.f60760b);
            sb2.append(") errMsg(");
            if (th2 != null) {
                str = th2.getMessage();
            } else {
                str = null;
            }
            sb2.append(str);
            sb2.append(')');
            logger.e("FrescoUtil", sb2.toString());
            ((List) f.f60748b.getValue()).remove(this.f60760b);
            ((ConcurrentHashMap) f.f60749c.getValue()).remove(this.f60760b);
        }

        @Override // a4.e
        public void k(String requestId) {
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                logger.h("FrescoUtil", "prefetch canceled -> url(" + this.f60759a + ") cacheKey(" + this.f60760b + ')');
            }
            ((List) f.f60748b.getValue()).remove(this.f60760b);
            ((ConcurrentHashMap) f.f60749c.getValue()).remove(this.f60760b);
        }
    }

    private f() {
    }

    private final f3.a k(ImageRequest imageRequest, f3.a aVar, FrescoConfig frescoConfig) {
        v2.d g10 = kk.a.g();
        g10.C(imageRequest);
        g10.E(false);
        g10.z(frescoConfig.getAutoPlayAnim());
        g10.b(aVar);
        if (frescoConfig.getControllerListener() != null) {
            g10.B(frescoConfig.getControllerListener());
        } else {
            g10.B(new b(imageRequest));
        }
        Intrinsics.checkNotNullExpressionValue(g10, "apply(...)");
        com.facebook.drawee.controller.a build = g10.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List p() {
        return Collections.synchronizedList(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap q() {
        return new ConcurrentHashMap();
    }

    private final k2.i<f2.a> s(final f2.a aVar) {
        return new k2.i() { // from class: kk.e
            @Override // k2.i
            public final boolean apply(Object obj) {
                boolean t10;
                t10 = f.t(f2.a.this, (f2.a) obj);
                return t10;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t(f2.a aVar, f2.a key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return Intrinsics.areEqual(key, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void v(f fVar, List list, Executor executor, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            executor = i2.i.g();
        }
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        fVar.u(list, executor, function1);
    }

    public static /* synthetic */ void x(f fVar, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        fVar.w(list, z10);
    }

    private final void z(com.facebook.drawee.generic.a aVar, FrescoConfig frescoConfig) {
        q qVar;
        if (frescoConfig.getScaleType() != null) {
            if (aVar != null) {
                aVar.s(frescoConfig.getScaleType());
            }
        } else if (aVar != null) {
            aVar.s(q.f3027i);
        }
        if (frescoConfig.getPlaceholderResId() != 0) {
            if (aVar != null) {
                int placeholderResId = frescoConfig.getPlaceholderResId();
                if (frescoConfig.getPlaceholderScaleType() != null) {
                    qVar = frescoConfig.getPlaceholderScaleType();
                } else {
                    qVar = q.f3027i;
                }
                aVar.y(placeholderResId, qVar);
            }
            if (aVar != null) {
                aVar.v(frescoConfig.getPlaceholderResId());
            }
        }
        if (frescoConfig.getCircleCrop()) {
            RoundingParams a10 = RoundingParams.a();
            Intrinsics.checkNotNullExpressionValue(a10, "asCircle(...)");
            if (frescoConfig.getBorderWidth() > 0.0f) {
                a10.o(frescoConfig.getBorderWidth());
            }
            if (frescoConfig.getBorderColor() != 0) {
                a10.n(frescoConfig.getBorderColor());
            }
            if (aVar != null) {
                aVar.B(a10);
            }
        }
        if (frescoConfig.getCornerTransform()) {
            if (frescoConfig.getRoundingParams() != null) {
                if (aVar != null) {
                    aVar.B(frescoConfig.getRoundingParams());
                }
            } else {
                RoundingParams b10 = RoundingParams.b(frescoConfig.getCornerRadius());
                Intrinsics.checkNotNullExpressionValue(b10, "fromCornersRadius(...)");
                if (frescoConfig.getBorderWidth() > 0.0f) {
                    b10.o(frescoConfig.getBorderWidth());
                }
                if (frescoConfig.getBorderColor() != 0) {
                    b10.n(frescoConfig.getBorderColor());
                }
                if (aVar != null) {
                    aVar.B(b10);
                }
            }
        }
        if (frescoConfig.getFadeDuration() >= 0 && aVar != null) {
            aVar.u(frescoConfig.getFadeDuration());
        }
    }

    @Nullable
    public final ImageRequest A(@Nullable CustomFrescoView customFrescoView, @NotNull FrescoConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (customFrescoView != null && g()) {
            z(customFrescoView.getHierarchy(), config);
            ImageRequest m10 = m(config);
            if (m10 != null) {
                customFrescoView.setController(k(m10, customFrescoView.getController(), config));
            }
            return m10;
        }
        return null;
    }

    public final void f(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e("FrescoUtil", error);
    }

    public final boolean g() {
        boolean areEqual;
        synchronized (f60751e) {
            try {
                if (f60750d == null) {
                    f60750d = Boolean.valueOf(ud.b.f68412a.C0());
                }
                areEqual = Intrinsics.areEqual(f60750d, Boolean.FALSE);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return areEqual;
    }

    public final boolean h(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (url.length() > 0 && v.g(url)) {
            return true;
        }
        return false;
    }

    public final void i(@NotNull ImageRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (id.a.f53392a.c()) {
            n("evictFromBitmapCache -> " + request.w());
        }
        f2.a i10 = kk.a.a().i(request, u.f51776a.b());
        if (i10 != null) {
            kk.a.b().e().b(f60747a.s(i10));
        }
    }

    public final void j(@NotNull ImageRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (id.a.f53392a.c()) {
            n("evictFromEncodedCache -> " + request.w());
        }
        f2.a i10 = kk.a.a().i(request, u.f51776a.b());
        if (i10 != null) {
            kk.a.b().h().b(f60747a.s(i10));
        }
    }

    @Nullable
    public final String l(@Nullable com.facebook.datasource.b<?> bVar) {
        if (bVar != null && bVar.b() != null) {
            Throwable b10 = bVar.b();
            if (b10 != null) {
                return b10.getMessage();
            }
            return null;
        }
        return "";
    }

    @Nullable
    public final ImageRequest m(@NotNull FrescoConfig config) {
        String str;
        ImageRequestBuilder x10;
        Intrinsics.checkNotNullParameter(config, "config");
        id.a aVar = id.a.f53392a;
        if (aVar.c()) {
            n("ossWidth(" + config.getOssWidth() + ") ossHeight(" + config.getOssHeight() + ") resizeWidth(" + config.getResizeWidth() + ") resizeHeight(" + config.getResizeHeight() + ')');
        }
        String url = config.getUrl();
        if (url != null && url.length() != 0) {
            ResourceHandler resourceHandler = ResourceHandler.f48167a;
            String url2 = config.getUrl();
            if (url2 == null) {
                url2 = "";
            }
            str = resourceHandler.n(url2);
        } else {
            str = null;
        }
        Uri uri = config.getUri();
        if ((str == null || str.length() == 0) && uri == null) {
            if (config.getPlaceholderResId() != 0) {
                uri = r2.d.g(config.getPlaceholderResId());
            } else {
                f("getImageRequest failed -> targetUrl is empty or targetUri is null");
                return null;
            }
        }
        if (str != null && str.length() != 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            if (config.getOssProcess() && h(str)) {
                if (StringsKt.b0(str, "?auth_key=", false, 2, null)) {
                    sb2.append(ContainerUtils.FIELD_DELIMITER);
                } else {
                    sb2.append("?");
                }
                if (!StringsKt.b0(str, "process=mediagate", false, 2, null)) {
                    sb2.append("process=mediagate&");
                }
                if (config.getOssWidth() > 0 || config.getOssHeight() > 0) {
                    sb2.append("x-oss-process=m_fill");
                }
                if (config.getOssWidth() > 0) {
                    sb2.append(",w_" + config.getOssWidth());
                }
                if (config.getOssHeight() > 0) {
                    sb2.append(",h_" + config.getOssHeight());
                }
            }
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            if (aVar.c()) {
                n("url(" + sb3 + ')');
            }
            x10 = ImageRequestBuilder.x(Uri.parse(sb3));
        } else {
            if (aVar.c()) {
                n("uri(" + uri + ')');
            }
            x10 = ImageRequestBuilder.x(uri);
        }
        if (config.getResizeWidth() > 0 && config.getResizeHeight() > 0) {
            x10.M(new s3.f(config.getResizeWidth(), config.getResizeHeight(), 0.0f, 0.0f, 12, null));
        }
        x10.O(s3.g.f66295c.a());
        if (config.getIterativeBoxBlurPostProcessor() != null) {
            x10.I(config.getIterativeBoxBlurPostProcessor());
        }
        return x10.a();
    }

    public final void n(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h("FrescoUtil", info);
    }

    public final boolean o(@NotNull ImageRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (!g()) {
            return false;
        }
        return kk.a.a().l(request);
    }

    public final void r() {
        if (!g()) {
            return;
        }
        try {
            if (!kk.a.a().n()) {
                kk.a.a().o();
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FrescoUtil", "pauseImageLoad failed -> " + e10.getMessage());
        }
    }

    public final void u(@NotNull List<? extends ImageRequest> imageRequests, @NotNull Executor executor, @Nullable Function1<? super List<Bitmap>, Unit> function1) {
        Intrinsics.checkNotNullParameter(imageRequests, "imageRequests");
        Intrinsics.checkNotNullParameter(executor, "executor");
        if (!g()) {
            if (function1 != null) {
                function1.invoke(new ArrayList());
                return;
            }
            return;
        }
        try {
            AtomicInteger atomicInteger = new AtomicInteger(0);
            ArrayList arrayList = new ArrayList();
            for (ImageRequest imageRequest : imageRequests) {
                kk.a.a().d(imageRequest, u.f51776a.b()).c(new c(arrayList, atomicInteger, imageRequests, function1), executor);
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FrescoUtil", "prefetchToBitmapCache exception -> " + e10.getMessage());
        }
    }

    public final void w(@NotNull List<? extends ImageRequest> imageRequests, boolean z10) {
        Intrinsics.checkNotNullParameter(imageRequests, "imageRequests");
        if (!imageRequests.isEmpty() && g()) {
            try {
                Context b10 = u.f51776a.b();
                for (ImageRequest imageRequest : imageRequests) {
                    String uri = imageRequest.w().toString();
                    Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                    String l10 = v.l(uri);
                    i<List<String>> iVar = f60748b;
                    if (!iVar.getValue().contains(l10)) {
                        p d10 = new p().d();
                        iVar.getValue().add(l10);
                        f60749c.getValue().put(l10, new a(kk.a.a().p(imageRequest, b10, new d(uri, l10, d10)), z10));
                    }
                }
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("FrescoUtil", "prefetchToDiskCache exception -> " + e10.getMessage());
            }
        }
    }

    public final void y() {
        if (!g()) {
            return;
        }
        try {
            if (kk.a.a().n()) {
                kk.a.a().r();
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FrescoUtil", "resumeImageLoad failed -> " + e10.getMessage());
        }
    }
}
