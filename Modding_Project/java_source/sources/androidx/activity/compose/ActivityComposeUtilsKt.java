package androidx.activity.compose;

import kotlin.Metadata;
/* compiled from: ActivityComposeUtils.kt */
@Metadata
/* loaded from: classes.dex */
public final class ActivityComposeUtilsKt {
    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ <T> T findOwner(android.content.Context r2) {
        /*
        L0:
            boolean r0 = r2 instanceof android.content.ContextWrapper
            if (r0 == 0) goto L14
            r0 = 3
            java.lang.String r1 = "T"
            kotlin.jvm.internal.Intrinsics.reifiedOperationMarker(r0, r1)
            if (r2 == 0) goto Ld
            return r2
        Ld:
            android.content.ContextWrapper r2 = (android.content.ContextWrapper) r2
            android.content.Context r2 = r2.getBaseContext()
            goto L0
        L14:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.compose.ActivityComposeUtilsKt.findOwner(android.content.Context):java.lang.Object");
    }
}
