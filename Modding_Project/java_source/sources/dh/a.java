package dh;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import uh.i0;
/* compiled from: ProfileLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull
    public final List<ProfileMenu> a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        Drawable drawable = ContextCompat.getDrawable(context, R$drawable.ic_profile_rewards);
        String string = context.getString(R$string.profile_fragment_rewards);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        arrayList.add(new ProfileMenu(1, drawable, string, 0, 8, null));
        if (!i0.f68447a.b()) {
            Drawable drawable2 = ContextCompat.getDrawable(context, R$drawable.ic_profile_download);
            String string2 = context.getString(R$string.offline_download);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            arrayList.add(new ProfileMenu(6, drawable2, string2, 0, 8, null));
        }
        Drawable drawable3 = ContextCompat.getDrawable(context, R$drawable.ic_profile_faq);
        String string3 = context.getString(R$string.profile_fragment_faq);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        arrayList.add(new ProfileMenu(7, drawable3, string3, 0, 8, null));
        Drawable drawable4 = ContextCompat.getDrawable(context, R$drawable.ic_profile_feedback);
        String string4 = context.getString(R$string.profile_fragment_feedback);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        arrayList.add(new ProfileMenu(2, drawable4, string4, 0, 8, null));
        if (!AccountRepo.f43052a.D0()) {
            Drawable drawable5 = ContextCompat.getDrawable(context, R$drawable.ic_profile_language);
            String string5 = context.getString(R$string.profile_fragment_language);
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            arrayList.add(new ProfileMenu(3, drawable5, string5, 0, 8, null));
        }
        Drawable drawable6 = ContextCompat.getDrawable(context, R$drawable.ic_profile_settings);
        String string6 = context.getString(R$string.profile_fragment_settings);
        Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
        arrayList.add(new ProfileMenu(4, drawable6, string6, 0, 8, null));
        return arrayList;
    }
}
