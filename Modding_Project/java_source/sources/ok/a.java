package ok;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomClickableSpan.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    private int f63225a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f63226b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Typeface f63227c;

    /* renamed from: d  reason: collision with root package name */
    private float f63228d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final View.OnClickListener f63229e;

    public a(int i10, boolean z10, @Nullable Typeface typeface, float f10, @Nullable View.OnClickListener onClickListener) {
        this.f63225a = i10;
        this.f63226b = z10;
        this.f63227c = typeface;
        this.f63228d = f10;
        this.f63229e = onClickListener;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        View.OnClickListener onClickListener = this.f63229e;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint ds2) {
        Intrinsics.checkNotNullParameter(ds2, "ds");
        ds2.setColor(this.f63225a);
        ds2.setUnderlineText(this.f63226b);
        Typeface typeface = this.f63227c;
        if (typeface != null) {
            ds2.setTypeface(typeface);
        }
        float f10 = this.f63228d;
        if (f10 != -1.0f) {
            ds2.setTextSize(f10);
        }
    }
}
