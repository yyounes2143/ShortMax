package rq;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class g0 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f66052e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final float f66053a;

    /* renamed from: b  reason: collision with root package name */
    private final float f66054b;

    /* renamed from: c  reason: collision with root package name */
    private final float f66055c;

    /* renamed from: d  reason: collision with root package name */
    private final float f66056d;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final g0 a(@Nullable String str) {
            List list;
            if (str != null) {
                list = StringsKt.split$default(str, new String[]{","}, false, 0, 6, null);
            } else {
                list = null;
            }
            if (list == null) {
                return null;
            }
            if (list.size() >= 4) {
                try {
                } catch (Exception unused) {
                    return null;
                }
            }
            return new g0(Float.parseFloat(StringsKt.v1((String) list.get(0)).toString()), Float.parseFloat(StringsKt.v1((String) list.get(1)).toString()), Float.parseFloat(StringsKt.v1((String) list.get(2)).toString()), Float.parseFloat(StringsKt.v1((String) list.get(3)).toString()));
        }

        private a() {
        }
    }

    public g0(float f10, float f11, float f12, float f13) {
        this.f66053a = f10;
        this.f66054b = f11;
        this.f66055c = f12;
        this.f66056d = f13;
    }

    public final float a() {
        return this.f66056d;
    }

    public final float b() {
        return this.f66053a;
    }

    public final float c() {
        return this.f66055c;
    }

    public final float d() {
        return this.f66054b;
    }

    public final boolean e() {
        if (this.f66053a == 0.0f && this.f66054b == 0.0f && this.f66055c == 0.0f && this.f66056d == 0.0f) {
            return true;
        }
        return false;
    }
}
