package kotlin;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import ms.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SafePublicationLazyImpl<T> implements i<T>, Serializable {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f60904d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater<SafePublicationLazyImpl<?>, Object> f60905e = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private volatile Function0<? extends T> f60906a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f60907b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Object f60908c;

    /* compiled from: LazyJVM.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SafePublicationLazyImpl(@NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.f60906a = initializer;
        r rVar = r.f62648a;
        this.f60907b = rVar;
        this.f60908c = rVar;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // ms.i
    public T getValue() {
        T t10 = (T) this.f60907b;
        r rVar = r.f62648a;
        if (t10 != rVar) {
            return t10;
        }
        Function0<? extends T> function0 = this.f60906a;
        if (function0 != null) {
            T invoke = function0.invoke();
            if (androidx.concurrent.futures.a.a(f60905e, this, rVar, invoke)) {
                this.f60906a = null;
                return invoke;
            }
        }
        return (T) this.f60907b;
    }

    @Override // ms.i
    public boolean isInitialized() {
        if (this.f60907b != r.f62648a) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        if (isInitialized()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
