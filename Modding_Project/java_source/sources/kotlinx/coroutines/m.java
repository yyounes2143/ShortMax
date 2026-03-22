package kotlinx.coroutines;

import gt.f1;
import gt.k1;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public final class m implements f1 {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f61827a;

    public m(boolean z10) {
        this.f61827a = z10;
    }

    @Override // gt.f1
    @Nullable
    public k1 b() {
        return null;
    }

    @Override // gt.f1
    public boolean isActive() {
        return this.f61827a;
    }

    @NotNull
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Empty{");
        if (isActive()) {
            str = "Active";
        } else {
            str = "New";
        }
        sb2.append(str);
        sb2.append('}');
        return sb2.toString();
    }
}
