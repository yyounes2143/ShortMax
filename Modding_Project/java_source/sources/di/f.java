package di;

import android.content.ClipData;
import android.content.ClipboardManager;
import androidx.appcompat.app.AppCompatActivity;
import com.startshorts.androidplayer.ui.activity.test.Type;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TestRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f50398a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Type f50399b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function1<AppCompatActivity, Unit> f50400c;

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull String text, @NotNull Type type, @NotNull Function1<? super AppCompatActivity, Unit> click) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(click, "click");
        this.f50398a = text;
        this.f50399b = type;
        this.f50400c = click;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(String str, AppCompatActivity it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object systemService = it.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("DEBUG", str));
        return Unit.f60915a;
    }

    @NotNull
    public final Function1<AppCompatActivity, Unit> c() {
        return this.f50400c;
    }

    @NotNull
    public final String d() {
        return this.f50398a;
    }

    @NotNull
    public final Type e() {
        return this.f50399b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (Intrinsics.areEqual(this.f50398a, fVar.f50398a) && this.f50399b == fVar.f50399b && Intrinsics.areEqual(this.f50400c, fVar.f50400c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f50398a.hashCode() * 31) + this.f50399b.hashCode()) * 31) + this.f50400c.hashCode();
    }

    @NotNull
    public String toString() {
        return "TestDateItem(text=" + this.f50398a + ", type=" + this.f50399b + ", click=" + this.f50400c + ')';
    }

    public /* synthetic */ f(final String str, Type type, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? Type.TEXT_TYPE : type, (i10 & 4) != 0 ? new Function1() { // from class: di.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b10;
                b10 = f.b(str, (AppCompatActivity) obj);
                return b10;
            }
        } : function1);
    }
}
