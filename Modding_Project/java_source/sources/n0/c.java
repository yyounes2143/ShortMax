package n0;

import androidx.annotation.Px;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dimension.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class c {

    /* compiled from: Dimension.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a extends c {

        /* renamed from: a  reason: collision with root package name */
        public final int f62716a;

        public a(@Px int i10) {
            super(null);
            this.f62716a = i10;
            if (i10 > 0) {
                return;
            }
            throw new IllegalArgumentException("px must be > 0.");
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f62716a == ((a) obj).f62716a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f62716a;
        }

        @NotNull
        public String toString() {
            return String.valueOf(this.f62716a);
        }
    }

    /* compiled from: Dimension.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f62717a = new b();

        private b() {
            super(null);
        }

        @NotNull
        public String toString() {
            return "Dimension.Undefined";
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
