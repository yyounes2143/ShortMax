package el;

import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import com.startshorts.androidplayer.viewmodel.reward.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends i {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f51350a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SignInAdInfoResult f51351b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(boolean z10, @NotNull SignInAdInfoResult task) {
        super(null);
        Intrinsics.checkNotNullParameter(task, "task");
        this.f51350a = z10;
        this.f51351b = task;
    }

    public final boolean a() {
        return this.f51350a;
    }

    @NotNull
    public final SignInAdInfoResult b() {
        return this.f51351b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f51350a == aVar.f51350a && Intrinsics.areEqual(this.f51351b, aVar.f51351b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.f51350a) * 31) + this.f51351b.hashCode();
    }

    @NotNull
    public String toString() {
        return "Result(result=" + this.f51350a + ", task=" + this.f51351b + ')';
    }
}
