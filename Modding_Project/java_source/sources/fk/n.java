package fk;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CurrencyCodeUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n f51742a = new n();

    private n() {
    }

    public final void a(@Nullable String str) {
        if (str != null && str.length() != 0) {
            ud.a aVar = ud.a.f68411a;
            String f10 = aVar.f();
            if (f10 == null || f10.length() == 0) {
                aVar.e0(str);
                ud.b.f68412a.t3(str);
            }
        }
    }
}
