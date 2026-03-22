package zd;

import com.tencent.mars.xlog.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseLogger.kt */
@Metadata
/* loaded from: classes6.dex */
public class b implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f71635a = new a(null);

    /* compiled from: BaseLogger.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String b(String str) {
        String str2 = "[" + c() + "][" + str + "]";
        Intrinsics.checkNotNullExpressionValue(str2, "toString(...)");
        return str2;
    }

    @Override // zd.c
    public void a(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        e(str, str2);
    }

    @NotNull
    public String c() {
        throw null;
    }

    public boolean d() {
        throw null;
    }

    @Override // zd.c
    public void e(@Nullable String str, @Nullable String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            if (d()) {
                try {
                    Log.e(b(str), str2);
                } catch (Exception unused) {
                }
            } else if (id.a.f53392a.c()) {
                Log.e(b(str), str2);
            }
        }
    }

    @Override // zd.c
    public void i(@Nullable String str, @Nullable String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            if (d()) {
                try {
                    Log.i(b(str), str2);
                } catch (Exception unused) {
                }
            } else if (id.a.f53392a.c()) {
                Log.i(b(str), str2);
            }
        }
    }
}
