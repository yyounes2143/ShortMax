package jk;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.startshorts.androidplayer.log.Logger;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContextExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d {
    @Nullable
    public static final AppCompatActivity a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        while (context instanceof ContextWrapper) {
            if (context instanceof AppCompatActivity) {
                return (AppCompatActivity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    @NotNull
    public static final List<String> b(@NotNull Context context, @NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList arrayList = new ArrayList();
        while (true) {
            try {
                Resources resources = context.getResources();
                int identifier = resources.getIdentifier(key + i10, TypedValues.Custom.S_STRING, context.getPackageName());
                if (identifier == 0) {
                    break;
                }
                String string = context.getString(identifier);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                arrayList.add(string);
                i10++;
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("getStringsByKey", "exception -> " + e10.getMessage());
            }
        }
        return arrayList;
    }

    public static /* synthetic */ List c(Context context, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return b(context, str, i10);
    }
}
