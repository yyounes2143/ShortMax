package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DebugMetadata.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDebugMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/ModuleNameRetriever\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"})
/* loaded from: classes8.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f61051a = new g();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a f61052b = new a(null, null, null);
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static a f61053c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DebugMetadata.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Method f61054a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final Method f61055b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Method f61056c;

        public a(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
            this.f61054a = method;
            this.f61055b = method2;
            this.f61056c = method3;
        }
    }

    private g() {
    }

    private final a a(BaseContinuationImpl baseContinuationImpl) {
        try {
            a aVar = new a(Class.class.getDeclaredMethod("getModule", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f61053c = aVar;
            return aVar;
        } catch (Exception unused) {
            a aVar2 = f61052b;
            f61053c = aVar2;
            return aVar2;
        }
    }

    @Nullable
    public final String b(@NotNull BaseContinuationImpl continuation) {
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        Object obj;
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        a aVar = f61053c;
        if (aVar == null) {
            aVar = a(continuation);
        }
        if (aVar == f61052b || (method = aVar.f61054a) == null || (invoke = method.invoke(continuation.getClass(), new Object[0])) == null || (method2 = aVar.f61055b) == null || (invoke2 = method2.invoke(invoke, new Object[0])) == null) {
            return null;
        }
        Method method3 = aVar.f61056c;
        if (method3 != null) {
            obj = method3.invoke(invoke2, new Object[0]);
        } else {
            obj = null;
        }
        if (!(obj instanceof String)) {
            return null;
        }
        return (String) obj;
    }
}
