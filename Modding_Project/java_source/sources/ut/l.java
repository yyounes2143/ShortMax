package ut;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
/* compiled from: SerialKinds.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class l {

    /* compiled from: SerialKinds.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends l {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f68626a = new a();

        private a() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends l {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f68627a = new b();

        private b() {
            super(null);
        }
    }

    public /* synthetic */ l(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @NotNull
    public String toString() {
        String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
        Intrinsics.checkNotNull(simpleName);
        return simpleName;
    }

    private l() {
    }
}
