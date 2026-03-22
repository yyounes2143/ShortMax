package y4;

import com.facebook.soloader.SoLoaderDSONotFoundError;
import com.facebook.soloader.SoLoaderULError;
import com.facebook.soloader.o;
import com.facebook.soloader.w;
import java.io.IOException;
/* compiled from: ReunpackBackupSoSources.java */
/* loaded from: classes2.dex */
public class j implements h {

    /* renamed from: a  reason: collision with root package name */
    private int f70654a;

    public j(int i10) {
        this.f70654a = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (r2 >= r8) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        r0 = r7[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if ((r0 instanceof com.facebook.soloader.f) != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        if ((r0 instanceof com.facebook.soloader.c) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
        ((com.facebook.soloader.f) r0).h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
        com.facebook.soloader.o.c("SoLoader", "Encountered an exception while reunpacking BackupSoSource " + r4.c() + " for library " + r8 + ": ", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
        r4 = (com.facebook.soloader.c) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
        com.facebook.soloader.o.b("SoLoader", "Preparing BackupSoSource for the first time " + r4.c());
        r4.e(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
        r8 = r7.length;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(com.facebook.soloader.w[] r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r0 = "SoLoader"
            int r1 = r7.length
            r2 = 0
            r3 = r2
        L5:
            if (r3 >= r1) goto L6c
            r4 = r7[r3]
            boolean r5 = r4 instanceof com.facebook.soloader.c
            if (r5 != 0) goto L10
            int r3 = r3 + 1
            goto L5
        L10:
            com.facebook.soloader.c r4 = (com.facebook.soloader.c) r4
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L46
            r1.<init>()     // Catch: java.lang.Exception -> L46
            java.lang.String r3 = "Preparing BackupSoSource for the first time "
            r1.append(r3)     // Catch: java.lang.Exception -> L46
            java.lang.String r3 = r4.c()     // Catch: java.lang.Exception -> L46
            r1.append(r3)     // Catch: java.lang.Exception -> L46
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L46
            com.facebook.soloader.o.b(r0, r1)     // Catch: java.lang.Exception -> L46
            r4.e(r2)     // Catch: java.lang.Exception -> L46
            int r8 = r7.length
        L2e:
            if (r2 >= r8) goto L44
            r0 = r7[r2]
            boolean r1 = r0 instanceof com.facebook.soloader.f
            if (r1 != 0) goto L37
            goto L41
        L37:
            boolean r1 = r0 instanceof com.facebook.soloader.c
            if (r1 == 0) goto L3c
            goto L41
        L3c:
            com.facebook.soloader.f r0 = (com.facebook.soloader.f) r0
            r0.h()
        L41:
            int r2 = r2 + 1
            goto L2e
        L44:
            r7 = 1
            return r7
        L46:
            r7 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Encountered an exception while reunpacking BackupSoSource "
            r1.append(r3)
            java.lang.String r3 = r4.c()
            r1.append(r3)
            java.lang.String r3 = " for library "
            r1.append(r3)
            r1.append(r8)
            java.lang.String r8 = ": "
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            com.facebook.soloader.o.c(r0, r8, r7)
        L6c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: y4.j.b(com.facebook.soloader.w[], java.lang.String):boolean");
    }

    private void c(Error error, String str) {
        o.b("SoLoader", "Reunpacking BackupSoSources due to " + error + ", retrying for specific library " + str);
    }

    private boolean d(w[] wVarArr, String str, int i10) {
        try {
            for (w wVar : wVarArr) {
                if ((wVar instanceof com.facebook.soloader.c) && ((com.facebook.soloader.c) wVar).x(str, i10)) {
                    return true;
                }
            }
            return false;
        } catch (IOException e10) {
            o.b("SoLoader", "Failed to run recovery for backup so source due to: " + e10);
            return false;
        }
    }

    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        if (!(unsatisfiedLinkError instanceof SoLoaderULError)) {
            return false;
        }
        SoLoaderULError soLoaderULError = (SoLoaderULError) unsatisfiedLinkError;
        String b10 = soLoaderULError.b();
        String message = soLoaderULError.getMessage();
        if (b10 == null) {
            o.b("SoLoader", "No so name provided in ULE, cannot recover");
            return false;
        } else if (soLoaderULError instanceof SoLoaderDSONotFoundError) {
            if ((this.f70654a & 1) == 0) {
                return false;
            }
            c(soLoaderULError, b10);
            return d(wVarArr, b10, 0);
        } else if (message == null || (!message.contains("/app/") && !message.contains("/mnt/"))) {
            return false;
        } else {
            c(soLoaderULError, b10);
            return b(wVarArr, b10);
        }
    }
}
