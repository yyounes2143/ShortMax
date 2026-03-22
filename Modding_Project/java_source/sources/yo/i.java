package yo;

import java.util.List;
/* compiled from: LegacySubtitleUtil.java */
/* loaded from: classes8.dex */
public class i {
    private static int a(k kVar, long j10) {
        if (j10 == -9223372036854775807L) {
            return 0;
        }
        int nextEventTimeIndex = kVar.getNextEventTimeIndex(j10);
        if (nextEventTimeIndex == -1) {
            nextEventTimeIndex = kVar.getEventTimeCount();
        }
        if (nextEventTimeIndex > 0 && kVar.getEventTime(nextEventTimeIndex - 1) == j10) {
            return nextEventTimeIndex - 1;
        }
        return nextEventTimeIndex;
    }

    private static void b(k kVar, int i10, cn.l<e> lVar) {
        long eventTime = kVar.getEventTime(i10);
        List<bn.a> cues = kVar.getCues(eventTime);
        if (cues.isEmpty()) {
            return;
        }
        if (i10 != kVar.getEventTimeCount() - 1) {
            long eventTime2 = kVar.getEventTime(i10 + 1) - kVar.getEventTime(i10);
            if (eventTime2 > 0) {
                lVar.accept(new e(cues, eventTime, eventTime2));
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043 A[LOOP:0: B:13:0x003d->B:15:0x0043, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(yo.k r11, yo.r.b r12, cn.l<yo.e> r13) {
        /*
            long r0 = r12.f71102a
            int r0 = a(r11, r0)
            long r1 = r12.f71102a
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r2 = 0
            if (r1 == 0) goto L3b
            int r1 = r11.getEventTimeCount()
            if (r0 >= r1) goto L3b
            long r3 = r12.f71102a
            java.util.List r6 = r11.getCues(r3)
            long r3 = r11.getEventTime(r0)
            boolean r1 = r6.isEmpty()
            if (r1 != 0) goto L3b
            long r7 = r12.f71102a
            int r1 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r1 >= 0) goto L3b
            yo.e r1 = new yo.e
            long r9 = r3 - r7
            r5 = r1
            r5.<init>(r6, r7, r9)
            r13.accept(r1)
            r1 = 1
            goto L3c
        L3b:
            r1 = r2
        L3c:
            r3 = r0
        L3d:
            int r4 = r11.getEventTimeCount()
            if (r3 >= r4) goto L49
            b(r11, r3, r13)
            int r3 = r3 + 1
            goto L3d
        L49:
            boolean r3 = r12.f71103b
            if (r3 == 0) goto L76
            if (r1 == 0) goto L51
            int r0 = r0 + (-1)
        L51:
            if (r2 >= r0) goto L59
            b(r11, r2, r13)
            int r2 = r2 + 1
            goto L51
        L59:
            if (r1 == 0) goto L76
            yo.e r1 = new yo.e
            long r2 = r12.f71102a
            java.util.List r4 = r11.getCues(r2)
            long r5 = r11.getEventTime(r0)
            long r2 = r12.f71102a
            long r11 = r11.getEventTime(r0)
            long r7 = r2 - r11
            r3 = r1
            r3.<init>(r4, r5, r7)
            r13.accept(r1)
        L76:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: yo.i.c(yo.k, yo.r$b, cn.l):void");
    }
}
