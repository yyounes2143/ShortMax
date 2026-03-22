package kq;

import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class a implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f62034a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<String> f62035b;

    public a(@NotNull List<String> initial) {
        Intrinsics.checkNotNullParameter(initial, "initial");
        this.f62034a = initial;
        this.f62035b = new HashSet<>(initial);
    }

    private final void b(String str) {
        if (!this.f62035b.contains(str)) {
            this.f62035b.add(str);
        }
    }

    private final void c(String str) {
        if (StringsKt.V(str, ContainerUtils.FIELD_DELIMITER, false, 2, null)) {
            String substring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            b(substring);
        } else if (StringsKt.V(str, "!", false, 2, null)) {
            String substring2 = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            e(substring2);
        }
    }

    private final void e(String str) {
        if (!Intrinsics.areEqual(str, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            this.f62035b.remove(str);
        }
    }

    @Override // kq.b
    public boolean a(@NotNull List<String> stateGroups) {
        boolean z10;
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        synchronized (this.f62035b) {
            if (stateGroups.isEmpty()) {
                z10 = true;
                break;
            }
            if (!stateGroups.isEmpty()) {
                for (String str : stateGroups) {
                    if (d(str)) {
                        z10 = true;
                        break;
                    }
                }
            }
            z10 = false;
        }
        return z10;
    }

    public boolean d(@NotNull String stateGroup) {
        boolean z10;
        Intrinsics.checkNotNullParameter(stateGroup, "stateGroup");
        synchronized (this.f62035b) {
            if (!Intrinsics.areEqual(stateGroup, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
                if (!this.f62035b.contains(stateGroup)) {
                    z10 = false;
                }
            }
            z10 = true;
        }
        return z10;
    }

    @Override // kq.b
    public void a(@NotNull String stateGroups) {
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        synchronized (this.f62035b) {
            try {
                List<String> split$default = StringsKt.split$default(stateGroups, new String[]{" "}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList(CollectionsKt.z(split$default, 10));
                for (String str : split$default) {
                    arrayList.add(StringsKt.v1(str).toString());
                }
                ArrayList<String> arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (!StringsKt.t0((String) obj)) {
                        arrayList2.add(obj);
                    }
                }
                for (String str2 : arrayList2) {
                    c(str2);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
