package rq;

import io.bidmachine.rendering.model.EventTaskType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class v {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f66129e = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final EventTaskType f66130a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f66131b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Object f66132c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f66133d;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public v(@NotNull EventTaskType eventTaskType, @NotNull String target, @Nullable Object obj, @NotNull List<String> stateGroups) {
        Intrinsics.checkNotNullParameter(eventTaskType, "eventTaskType");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        this.f66130a = eventTaskType;
        this.f66131b = target;
        this.f66132c = obj;
        this.f66133d = stateGroups;
    }

    @NotNull
    public final EventTaskType a() {
        return this.f66130a;
    }

    @NotNull
    public final List<String> b() {
        return this.f66133d;
    }

    @NotNull
    public final String c() {
        return this.f66131b;
    }

    @Nullable
    public final Object d() {
        return this.f66132c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (this.f66130a == vVar.f66130a && Intrinsics.areEqual(this.f66131b, vVar.f66131b) && Intrinsics.areEqual(this.f66132c, vVar.f66132c) && Intrinsics.areEqual(this.f66133d, vVar.f66133d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.f66130a.hashCode() * 31) + this.f66131b.hashCode()) * 31;
        Object obj = this.f66132c;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return ((hashCode2 + hashCode) * 31) + this.f66133d.hashCode();
    }

    @NotNull
    public String toString() {
        return "EventTaskParams(eventTaskType=" + this.f66130a + ", target=" + this.f66131b + ", value=" + this.f66132c + ", stateGroups=" + this.f66133d + ')';
    }
}
