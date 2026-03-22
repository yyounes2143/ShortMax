package com.ss.texturerender.effect;
/* loaded from: classes6.dex */
public class EmptyEffect extends AbsEffect {
    public EmptyEffect(int i10) {
        super(i10, 6);
        this.mOrder = 101;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        return null;
    }
}
