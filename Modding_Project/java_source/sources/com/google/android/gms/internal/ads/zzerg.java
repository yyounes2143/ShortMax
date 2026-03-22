package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzerg implements zzeuc {
    private final Context zza;
    private final zzgdy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzerg(zzgdy zzgdyVar, Context context) {
        this.zzb = zzgdyVar;
        this.zza = context;
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4587)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzerh zzc(com.google.android.gms.internal.ads.zzerg r1) {
        /*
            com.google.android.gms.internal.ads.zzerh r0 = new com.google.android.gms.internal.ads.zzerh
            com.google.android.gms.ads.internal.zzv.zzr()
            android.content.Context r1 = r1.zza
            java.lang.Integer r1 = com.google.android.gms.ads.internal.util.zzs.zzt(r1)
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzerg.zzc(com.google.android.gms.internal.ads.zzerg):com.google.android.gms.internal.ads.zzerh");
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 57;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerf
            /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.ads.zzerg.zzc(com.google.android.gms.internal.ads.zzerg):com.google.android.gms.internal.ads.zzerh
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
                	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
                Caused by: java.lang.IndexOutOfBoundsException: Index: 0
                	at java.base/java.util.Collections$EmptyList.get(Collections.java:4587)
                	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
                	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
                	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
                	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:65)
                	... 1 more
                */
            @Override // java.util.concurrent.Callable
            public final java.lang.Object call() {
                /*
                    r1 = this;
                    com.google.android.gms.internal.ads.zzerg r0 = com.google.android.gms.internal.ads.zzerg.this
                    com.google.android.gms.internal.ads.zzerh r0 = com.google.android.gms.internal.ads.zzerg.zzc(r0)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzerf.call():java.lang.Object");
            }
        });
    }
}
