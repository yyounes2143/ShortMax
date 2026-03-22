package gh;

import android.content.Context;
import com.startshorts.androidplayer.bean.settings.AppSettings;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: SettingsRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f52359a = new d();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f52360b = kotlin.c.b(new Function0() { // from class: gh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            b c10;
            c10 = d.c();
            return c10;
        }
    });

    private d() {
    }

    private final b b() {
        return (b) f52360b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b c() {
        return new b();
    }

    @NotNull
    public final List<AppSettings> d(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return b().d(context);
    }
}
