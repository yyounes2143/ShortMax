package kq;

import java.util.ArrayList;
import java.util.List;
import jq.d;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class c implements d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f62036a;

    public c(@NotNull b stateGroupController) {
        Intrinsics.checkNotNullParameter(stateGroupController, "stateGroupController");
        this.f62036a = stateGroupController;
    }

    @Override // jq.d
    public boolean a(@NotNull List<? extends Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        if (params.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.z(params, 10));
        for (Object obj : params) {
            arrayList.add(obj.toString());
        }
        return !this.f62036a.a(arrayList);
    }
}
