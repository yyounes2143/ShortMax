package ds;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PipelinePhaseRelation.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class g {

    /* compiled from: PipelinePhaseRelation.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends g {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final f f50583a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull f relativeTo) {
            super(null);
            Intrinsics.checkNotNullParameter(relativeTo, "relativeTo");
            this.f50583a = relativeTo;
        }

        @NotNull
        public final f a() {
            return this.f50583a;
        }
    }

    /* compiled from: PipelinePhaseRelation.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends g {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final f f50584a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull f relativeTo) {
            super(null);
            Intrinsics.checkNotNullParameter(relativeTo, "relativeTo");
            this.f50584a = relativeTo;
        }
    }

    /* compiled from: PipelinePhaseRelation.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c extends g {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f50585a = new c();

        private c() {
            super(null);
        }
    }

    public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private g() {
    }
}
