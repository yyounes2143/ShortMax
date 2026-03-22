package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public final class BuildInfo {
    @Nullable
    private static volatile BuildInfo instance;
    @NonNull
    private final hr.a<Boolean> isDebuggable;
    @Nullable
    private volatile String sha1Signature = null;
    @Nullable
    private volatile String sha256Signature = null;

    private BuildInfo(@NonNull final Context context) {
        this.isDebuggable = new hr.a<>(new hr.b() { // from class: io.bidmachine.u2
            @Override // hr.b
            public final Object get() {
                Boolean lambda$new$0;
                lambda$new$0 = BuildInfo.lambda$new$0(context);
                return lambda$new$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$new$0(Context context) {
        boolean z10;
        if ((context.getApplicationInfo().flags & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    @NonNull
    public static BuildInfo obtain(@NonNull Context context) {
        BuildInfo buildInfo = instance;
        if (buildInfo == null) {
            synchronized (BuildInfo.class) {
                try {
                    buildInfo = instance;
                    if (buildInfo == null) {
                        buildInfo = new BuildInfo(context.getApplicationContext());
                        instance = buildInfo;
                    }
                } finally {
                }
            }
        }
        return buildInfo;
    }

    @Nullable
    public String getSha1Signature(@NonNull Context context) {
        String str = this.sha1Signature;
        if (str == null) {
            String m10 = fr.c.m(context);
            this.sha1Signature = m10;
            return m10;
        }
        return str;
    }

    @Nullable
    public String getSha256Signature(@NonNull Context context) {
        String str = this.sha256Signature;
        if (str == null) {
            String n10 = fr.c.n(context);
            this.sha256Signature = n10;
            return n10;
        }
        return str;
    }

    public boolean isDebuggable() {
        return this.isDebuggable.get().booleanValue();
    }
}
