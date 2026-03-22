package u3;

import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.j1;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProducerToDataSourceAdapter.kt */
@Metadata
/* loaded from: classes3.dex */
public final class d<T> extends u3.a<T> {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f67794j = new a(null);

    /* compiled from: ProducerToDataSourceAdapter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <T> com.facebook.datasource.b<T> a(@NotNull b1<T> producer, @NotNull j1 settableProducerContext, @NotNull a4.d listener) {
            Intrinsics.checkNotNullParameter(producer, "producer");
            Intrinsics.checkNotNullParameter(settableProducerContext, "settableProducerContext");
            Intrinsics.checkNotNullParameter(listener, "listener");
            return new d(producer, settableProducerContext, listener, null);
        }

        private a() {
        }
    }

    public /* synthetic */ d(b1 b1Var, j1 j1Var, a4.d dVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(b1Var, j1Var, dVar);
    }

    private d(b1<T> b1Var, j1 j1Var, a4.d dVar) {
        super(b1Var, j1Var, dVar);
    }
}
