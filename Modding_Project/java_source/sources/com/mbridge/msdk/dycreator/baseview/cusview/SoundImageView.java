package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.tools.h0;
/* loaded from: classes5.dex */
public class SoundImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f26332a;

    public SoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26332a = true;
    }

    public boolean getStatus() {
        return this.f26332a;
    }

    public void setSoundStatus(boolean z10) {
        this.f26332a = z10;
        if (z10) {
            setImageResource(h0.a(getContext(), "mbridge_reward_sound_open", "drawable"));
        } else {
            setImageResource(h0.a(getContext(), "mbridge_reward_sound_close", "drawable"));
        }
    }

    public SoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26332a = true;
    }

    public SoundImageView(Context context) {
        super(context);
        this.f26332a = true;
    }
}
