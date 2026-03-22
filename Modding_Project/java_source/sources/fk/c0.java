package fk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Icon;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import androidx.core.content.pm.m0;
import androidx.core.content.pm.x0;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.activity.shortcut.ShortCutNavigatorActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortCutsUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShortCutsUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortCutsUtil.kt\ncom/startshorts/androidplayer/utils/ShortCutsUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1863#2:61\n1864#2:63\n1#3:62\n*S KotlinDebug\n*F\n+ 1 ShortCutsUtil.kt\ncom/startshorts/androidplayer/utils/ShortCutsUtil\n*L\n35#1:61\n35#1:63\n*E\n"})
/* loaded from: classes7.dex */
public final class c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c0 f51709a = new c0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f51710b = "continueWatching";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f51711c = "moreDrama";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String f51712d = "viewHistory";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final String f51713e = "freeBonus";
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final String f51714f = "allFree";
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final String f51715g = "mayAlsoLike";
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final List<a> f51716h = CollectionsKt.q(new a("continueWatching", R$drawable.ic_shortcut_play_video, R$string.continue_watching), new a("moreDrama", R$drawable.ic_shortcut_more, R$string.shortcuts_more_drama), new a("viewHistory", R$drawable.ic_shortcut_play_history, R$string.shortcuts_view_history), new a("freeBonus", R$drawable.ic_shortcut_free_bonus, R$string.shortcuts_free_bonus), new a("allFree", R$drawable.ic_shortcut_all_free, R$string.subscription_detail_activity_privilege_5_desc), new a("mayAlsoLike", R$drawable.ic_shortcut_may_also_like, R$string.shortcuts_may_also_like));

    /* compiled from: ShortCutsUtil.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f51717a;

        /* renamed from: b  reason: collision with root package name */
        private final int f51718b;

        /* renamed from: c  reason: collision with root package name */
        private final int f51719c;

        public a(@NotNull String shortcutId, int i10, int i11) {
            Intrinsics.checkNotNullParameter(shortcutId, "shortcutId");
            this.f51717a = shortcutId;
            this.f51718b = i10;
            this.f51719c = i11;
        }

        public final int a() {
            return this.f51718b;
        }

        public final int b() {
            return this.f51719c;
        }

        @NotNull
        public final String c() {
            return this.f51717a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f51717a, aVar.f51717a) && this.f51718b == aVar.f51718b && this.f51719c == aVar.f51719c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f51717a.hashCode() * 31) + Integer.hashCode(this.f51718b)) * 31) + Integer.hashCode(this.f51719c);
        }

        @NotNull
        public String toString() {
            return "SCResource(shortcutId=" + this.f51717a + ", icon=" + this.f51718b + ", label=" + this.f51719c + ')';
        }
    }

    private c0() {
    }

    @NotNull
    public final String a() {
        return f51714f;
    }

    @NotNull
    public final String b() {
        return f51710b;
    }

    @NotNull
    public final String c() {
        return f51713e;
    }

    @NotNull
    public final String d() {
        return f51715g;
    }

    @NotNull
    public final String e() {
        return f51711c;
    }

    @NotNull
    public final String f() {
        return f51712d;
    }

    @RequiresApi(25)
    public final void g(@NotNull Context context, @NotNull List<String> shortcutList) {
        Object obj;
        ShortcutInfo.Builder shortLabel;
        ShortcutInfo.Builder longLabel;
        ShortcutInfo.Builder icon;
        ShortcutInfo.Builder intent;
        ShortcutInfo build;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(shortcutList, "shortcutList");
        ArrayList arrayList = new ArrayList();
        for (String str : shortcutList) {
            Iterator<T> it = f51716h.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((a) obj).c(), str)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            a aVar = (a) obj;
            if (aVar != null) {
                shortLabel = androidx.core.content.pm.i.a(context, str).setShortLabel(context.getString(aVar.b()));
                longLabel = shortLabel.setLongLabel(context.getString(aVar.b()));
                icon = longLabel.setIcon(Icon.createWithResource(context, aVar.a()));
                Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse("shorttv://www.shorttv.live/shortcut?actType=" + str));
                intent2.setClass(context, ShortCutNavigatorActivity.class);
                intent = icon.setIntent(intent2);
                build = intent.build();
                Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                arrayList.add(build);
            }
        }
        x0.a(context.getSystemService(m0.a())).setDynamicShortcuts(arrayList);
    }
}
