package t4;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HashCode.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f67073a = new a();

    private a() {
    }

    public static final int a(int i10, @Nullable Object obj) {
        int i11;
        int i12 = i10 * 31;
        if (obj != null) {
            i11 = obj.hashCode();
        } else {
            i11 = 0;
        }
        return i12 + i11;
    }
}
