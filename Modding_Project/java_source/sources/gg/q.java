package gg;

import android.app.Activity;
import android.content.Context;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IBillingClient.kt */
@Metadata
/* loaded from: classes7.dex */
public interface q {
    boolean a();

    void b(@Nullable String str);

    @Nullable
    Object c(@NotNull String str, @NotNull String str2, @NotNull rs.c<Object> cVar);

    void d(@Nullable Object obj);

    @Nullable
    Object e(@NotNull String str, @NotNull rs.c<? super List<zc.f>> cVar);

    void f(@Nullable List<CoinSku> list);

    void g();

    void h(@NotNull Context context, @NotNull String str);

    void i(@Nullable ActResource actResource);

    boolean isConnected();

    boolean j();

    void k(@NotNull Context context, @NotNull String str, @Nullable zc.j jVar);

    void l(@NotNull String str, @NotNull List<zc.g> list, boolean z10);

    void m(@Nullable List<SubsSku> list);

    void n(@NotNull String str, @NotNull Activity activity, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull Object obj, int i10, @Nullable zc.k kVar, @Nullable String str5, @Nullable SubsSku subsSku);

    boolean o();
}
