package com.inmobi.media;

import android.content.Context;
import android.media.AudioManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class K3 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final K3 f23770a = new K3();

    public K3() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Object obj;
        int i10;
        Context d10 = Uc.d();
        AudioManager audioManager = null;
        if (d10 != null) {
            obj = d10.getSystemService("audio");
        } else {
            obj = null;
        }
        if (obj instanceof AudioManager) {
            audioManager = (AudioManager) obj;
        }
        if (audioManager != null) {
            i10 = audioManager.getStreamMaxVolume(3);
        } else {
            i10 = 15;
        }
        return Integer.valueOf(i10);
    }
}
