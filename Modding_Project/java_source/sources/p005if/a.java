package p005if;

import com.startshorts.androidplayer.repo.account.AccountRepo;
import hk.b;
import hk.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IPManager.kt */
@Metadata
/* renamed from: if.a  reason: invalid package */
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f53409a = new a();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static String f53410b;

    private a() {
    }

    @Nullable
    public final String a() {
        String f02;
        String str = f53410b;
        if ((str == null || str.length() == 0) && (f02 = AccountRepo.f43052a.f0()) != null && f02.length() != 0) {
            e eVar = e.f52894a;
            byte[] bytes = f02.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            f53410b = eVar.a(bytes, b.f52886a.g(), 2);
        }
        return f53410b;
    }
}
