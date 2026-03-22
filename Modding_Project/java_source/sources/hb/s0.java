package hb;

import java.util.Calendar;
import java.util.UUID;
/* loaded from: classes5.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private long f52749a = 1800000;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f52750b = false;

    /* renamed from: c  reason: collision with root package name */
    private a f52751c = null;

    /* loaded from: classes5.dex */
    private class a {

        /* renamed from: a  reason: collision with root package name */
        String f52752a = UUID.randomUUID().toString().replace("-", "");

        /* renamed from: b  reason: collision with root package name */
        boolean f52753b = true;

        /* renamed from: c  reason: collision with root package name */
        private long f52754c;

        a(long j10) {
            this.f52752a += "_" + j10;
            this.f52754c = j10;
            s0.this.f52750b = false;
        }

        private boolean b(long j10, long j11) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j10);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j11);
            if (calendar.get(1) != calendar2.get(1) || calendar.get(6) != calendar2.get(6)) {
                return true;
            }
            return false;
        }

        private void c(long j10) {
            f1.h("hmsSdk", "getNewSession() session is flush!");
            String uuid = UUID.randomUUID().toString();
            this.f52752a = uuid;
            this.f52752a = uuid.replace("-", "");
            this.f52752a += "_" + j10;
            this.f52754c = j10;
            this.f52753b = true;
        }

        private boolean d(long j10, long j11) {
            if (j11 - j10 >= s0.this.f52749a) {
                return true;
            }
            return false;
        }

        void a(long j10) {
            if (s0.this.f52750b) {
                s0.this.f52750b = false;
                c(j10);
            } else if (!d(this.f52754c, j10) && !b(this.f52754c, j10)) {
                this.f52754c = j10;
                this.f52753b = false;
            } else {
                c(j10);
            }
        }
    }

    public String a() {
        a aVar = this.f52751c;
        if (aVar == null) {
            f1.m("hmsSdk", "getSessionName(): session not prepared. onEvent() must be called first.");
            return "";
        }
        return aVar.f52752a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j10) {
        a aVar = this.f52751c;
        if (aVar == null) {
            f1.h("hmsSdk", "Session is first flush");
            this.f52751c = new a(j10);
            return;
        }
        aVar.a(j10);
    }

    public boolean f() {
        a aVar = this.f52751c;
        if (aVar == null) {
            f1.m("hmsSdk", "isFirstEvent(): session not prepared. onEvent() must be called first.");
            return false;
        }
        return aVar.f52753b;
    }
}
