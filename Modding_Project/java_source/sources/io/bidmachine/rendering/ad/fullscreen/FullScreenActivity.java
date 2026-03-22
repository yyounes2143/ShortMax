package io.bidmachine.rendering.ad.fullscreen;

import android.os.Bundle;
import io.bidmachine.rendering.internal.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import rp.m;
import yq.p;
@Metadata
/* loaded from: classes8.dex */
public final class FullScreenActivity extends a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private m f58047a;

    private final void e() {
        p.e(this);
        m mVar = this.f58047a;
        if (mVar != null) {
            mVar.Y();
        }
        this.f58047a = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.rendering.internal.a, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        m mVar;
        super.onCreate(bundle);
        mVar = rp.a.f65950a;
        this.f58047a = mVar;
        if (mVar == null) {
            e();
        } else {
            mVar.c0(this);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        m mVar;
        super.onDestroy();
        if (!isChangingConfigurations()) {
            mVar = rp.a.f65950a;
            if (Intrinsics.areEqual(mVar, this.f58047a)) {
                rp.a.f65950a = null;
            }
            e();
        }
    }
}
