package kotlinx.coroutines;

import gt.f1;
import kotlin.Metadata;
import mt.a0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public final class u {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final a0 f61909a = new a0("COMPLETING_ALREADY");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a0 f61910b = new a0("COMPLETING_WAITING_CHILDREN");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final a0 f61911c = new a0("COMPLETING_RETRY");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final a0 f61912d = new a0("TOO_LATE_TO_CANCEL");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final a0 f61913e = new a0("SEALED");
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final m f61914f = new m(false);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final m f61915g = new m(true);

    @Nullable
    public static final Object g(@Nullable Object obj) {
        if (obj instanceof f1) {
            return new o((f1) obj);
        }
        return obj;
    }

    @Nullable
    public static final Object h(@Nullable Object obj) {
        o oVar;
        f1 f1Var;
        if (obj instanceof o) {
            oVar = (o) obj;
        } else {
            oVar = null;
        }
        if (oVar != null && (f1Var = oVar.f61829a) != null) {
            return f1Var;
        }
        return obj;
    }
}
