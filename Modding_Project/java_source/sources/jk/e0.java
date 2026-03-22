package jk;

import android.view.View;
import android.view.ViewStub;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewStubExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e0 {
    public static final void a(@NotNull ViewStubProxy viewStubProxy, int i10) {
        Intrinsics.checkNotNullParameter(viewStubProxy, "<this>");
        View root = viewStubProxy.getRoot();
        if (root != null) {
            root.setVisibility(i10);
        }
    }

    public static /* synthetic */ void b(ViewStubProxy viewStubProxy, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 8;
        }
        a(viewStubProxy, i10);
    }

    @Nullable
    public static final View c(@NotNull ViewStubProxy viewStubProxy) {
        Intrinsics.checkNotNullParameter(viewStubProxy, "<this>");
        try {
            ViewStub viewStub = viewStubProxy.getViewStub();
            if (viewStub == null) {
                return null;
            }
            return viewStub.inflate();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ViewStubProxy", "inflate exception -> " + e10.getMessage());
            return null;
        }
    }

    @Nullable
    public static final View d(@NotNull ViewStub viewStub) {
        Intrinsics.checkNotNullParameter(viewStub, "<this>");
        if (fk.v.f51778a.b()) {
            try {
                View inflate = viewStub.inflate();
                if (inflate == null) {
                    return null;
                }
                inflate.setLayoutDirection(1);
                return inflate;
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("ViewStub", "inflateSupportsRtl exception -> " + e10.getMessage());
                return null;
            }
        }
        try {
            return viewStub.inflate();
        } catch (Exception e11) {
            Logger logger2 = Logger.f41511a;
            logger2.e("ViewStub", "inflateSupportsRtl exception -> " + e11.getMessage());
            return null;
        }
    }

    @Nullable
    public static final View e(@NotNull ViewStubProxy viewStubProxy) {
        Intrinsics.checkNotNullParameter(viewStubProxy, "<this>");
        if (fk.v.f51778a.b()) {
            View c10 = c(viewStubProxy);
            if (c10 != null) {
                c10.setLayoutDirection(1);
                return c10;
            }
            return null;
        }
        return c(viewStubProxy);
    }

    public static final boolean f(@NotNull ViewStubProxy viewStubProxy) {
        View root;
        Intrinsics.checkNotNullParameter(viewStubProxy, "<this>");
        if (!viewStubProxy.isInflated() || (root = viewStubProxy.getRoot()) == null || root.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public static final void g(@NotNull ViewStubProxy viewStubProxy) {
        Intrinsics.checkNotNullParameter(viewStubProxy, "<this>");
        try {
            if (viewStubProxy.getViewStub() != null) {
                ViewStub viewStub = viewStubProxy.getViewStub();
                if (viewStub != null) {
                    viewStub.setVisibility(0);
                }
            } else {
                View root = viewStubProxy.getRoot();
                if (root != null) {
                    root.setVisibility(0);
                }
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ViewStubProxy", "show exception -> " + e10.getMessage());
        }
    }

    public static final void h(@NotNull ViewStubProxy viewStubProxy) {
        View root;
        Intrinsics.checkNotNullParameter(viewStubProxy, "<this>");
        try {
            if (viewStubProxy.getViewStub() != null) {
                ViewStub viewStub = viewStubProxy.getViewStub();
                if (viewStub != null) {
                    viewStub.setVisibility(0);
                }
                if (fk.v.f51778a.b() && (root = viewStubProxy.getRoot()) != null) {
                    root.setLayoutDirection(1);
                    return;
                }
                return;
            }
            View root2 = viewStubProxy.getRoot();
            if (root2 != null) {
                root2.setVisibility(0);
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ViewStubProxy", "showSupportsRtl exception -> " + e10.getMessage());
        }
    }
}
