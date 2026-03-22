package tp;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.CalendarContract;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class p {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f67643b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f67644a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public p() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(newSingleThreadExecutor, "newSingleThreadExecutor()");
        this.f67644a = newSingleThreadExecutor;
    }

    private final Intent b(Intent intent) {
        Intent flags = Intent.createChooser(intent, "").setFlags(268435456);
        Intrinsics.checkNotNullExpressionValue(flags, "createChooser(intent, \"\"…t.FLAG_ACTIVITY_NEW_TASK)");
        return flags;
    }

    private final Intent c(io.bidmachine.iab.mraid.d dVar) {
        int i10;
        Intent putExtra = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra("title", dVar.g()).putExtra("beginTime", dVar.k().getTime());
        Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(Intent.ACTION_INS…CalendarEvent.start.time)");
        Date h10 = dVar.h();
        if (h10 != null) {
            putExtra.putExtra("endTime", h10.getTime());
        }
        String m10 = dVar.m();
        if (m10 != null) {
            putExtra.putExtra(InMobiNetworkValues.DESCRIPTION, m10);
        }
        String i11 = dVar.i();
        if (i11 != null) {
            putExtra.putExtra("eventLocation", i11);
        }
        String l10 = dVar.l();
        int i12 = 0;
        if (l10 != null) {
            if (Intrinsics.areEqual(l10, "confirmed")) {
                i10 = 1;
            } else if (Intrinsics.areEqual(l10, "cancelled")) {
                i10 = 2;
            } else {
                i10 = 0;
            }
            putExtra.putExtra("eventStatus", i10);
        }
        String n10 = dVar.n();
        if (n10 != null) {
            if (Intrinsics.areEqual(n10, "transparent")) {
                i12 = 1;
            } else if (!Intrinsics.areEqual(n10, "opaque")) {
                i12 = 2;
            }
            putExtra.putExtra("availability", i12);
        }
        String j10 = dVar.j();
        if (j10 != null) {
            putExtra.putExtra("rrule", j10);
        }
        return putExtra;
    }

    private final void d(Context context, Intent intent, yq.d<Boolean> dVar) {
        try {
            context.startActivity(intent);
            sq.j.m(Boolean.TRUE, dVar);
        } catch (Exception e10) {
            s.h(e10);
            sq.j.m(Boolean.FALSE, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(p this$0, Context applicationContext, Uri uri, yq.d dVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(uri, "$uri");
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        this$0.j(applicationContext, uri, dVar);
    }

    private final void h(Context context, final Uri uri, final yq.d<Boolean> dVar) {
        final Context applicationContext = context.getApplicationContext();
        this.f67644a.execute(new Runnable() { // from class: tp.o
            @Override // java.lang.Runnable
            public final void run() {
                p.g(p.this, applicationContext, uri, dVar);
            }
        });
    }

    private final void i(Context context, io.bidmachine.iab.mraid.d dVar, yq.d<Boolean> dVar2) {
        d(context, b(c(dVar)), dVar2);
    }

    private final void j(Context context, Uri uri, yq.d<Boolean> dVar) {
        yq.g.b(context, uri.toString(), dVar);
    }

    public final void e(@NotNull Context context, @Nullable Uri uri, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (uri == null) {
            s.b("IntentLauncher", "launch - Uri is null", new Object[0]);
            sq.j.m(Boolean.FALSE, dVar);
        } else if (yq.r.o(uri)) {
            h(context, uri, dVar);
        } else if (uri.getScheme() != null) {
            sq.j.m(Boolean.valueOf(yq.g.d(context, uri.toString())), dVar);
        } else {
            s.b("IntentLauncher", "launch - Invalid uri: %s", uri);
            sq.j.m(Boolean.FALSE, dVar);
        }
    }

    public final void f(@NotNull Context context, @NotNull io.bidmachine.iab.mraid.d mraidCalendarEvent, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mraidCalendarEvent, "mraidCalendarEvent");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        i(applicationContext, mraidCalendarEvent, dVar);
    }
}
