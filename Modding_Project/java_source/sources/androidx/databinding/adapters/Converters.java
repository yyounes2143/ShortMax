package androidx.databinding.adapters;

import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import androidx.databinding.BindingConversion;
/* loaded from: classes2.dex */
public class Converters {
    @BindingConversion
    public static ColorStateList convertColorToColorStateList(int i10) {
        return ColorStateList.valueOf(i10);
    }

    @BindingConversion
    public static ColorDrawable convertColorToDrawable(int i10) {
        return new ColorDrawable(i10);
    }
}
