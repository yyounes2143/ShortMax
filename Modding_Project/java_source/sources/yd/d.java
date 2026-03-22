package yd;

import android.view.View;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnClickEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class d implements View.OnClickListener {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f70778d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f70779a;

    /* renamed from: b  reason: collision with root package name */
    private long f70780b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Object f70781c;

    /* compiled from: OnClickEvent.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d(long j10) {
        this.f70779a = j10;
        this.f70781c = new Object();
    }

    public abstract void a(@NotNull View view);

    @Override // android.view.View.OnClickListener
    public void onClick(@NotNull View v10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(v10, "v");
        synchronized (this.f70781c) {
            try {
                long L = DeviceUtil.f48146a.L();
                if (L - this.f70780b > this.f70779a) {
                    this.f70780b = L;
                    z10 = true;
                } else {
                    z10 = false;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            a(v10);
        }
    }

    public /* synthetic */ d(long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 250L : j10);
    }
}
