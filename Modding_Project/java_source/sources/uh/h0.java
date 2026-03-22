package uh;

import gt.d0;
import gt.r1;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadScope.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadScope.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadScopeKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,41:1\n47#2,4:42\n47#2,4:46\n*S KotlinDebug\n*F\n+ 1 DownloadScope.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadScopeKt\n*L\n13#1:42,4\n29#1:46,4\n*E\n"})
/* loaded from: classes7.dex */
public final class h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final ms.i f68444a = kotlin.c.b(new Function0() { // from class: uh.f0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            gt.g0 c10;
            c10 = h0.c();
            return c10;
        }
    });
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f68445b = kotlin.c.b(new Function0() { // from class: uh.g0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            gt.g0 d10;
            d10 = h0.d();
            return d10;
        }
    });

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 DownloadScope.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadScopeKt\n*L\n1#1,49:1\n14#2,9:50\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a extends kotlin.coroutines.a implements gt.d0 {
        public a(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            new Exception("autoCatchMainScope:自动catch异常的协程scope捕获到异常", th2).printStackTrace();
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 DownloadScope.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadScopeKt\n*L\n1#1,49:1\n30#2,9:50\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b extends kotlin.coroutines.a implements gt.d0 {
        public b(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            new Exception("autoCatchMainScope:自动catch异常的协程scope捕获到异常", th2).printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final gt.g0 c() {
        return kotlinx.coroutines.i.a(gt.q0.a().plus(r1.b(null, 1, null)).plus(new a(gt.d0.D8)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final gt.g0 d() {
        return kotlinx.coroutines.i.a(gt.q0.c().plus(r1.b(null, 1, null)).plus(new b(gt.d0.D8)));
    }

    @NotNull
    public static final gt.g0 e() {
        return (gt.g0) f68444a.getValue();
    }

    @NotNull
    public static final gt.g0 f() {
        return (gt.g0) f68445b.getValue();
    }
}
