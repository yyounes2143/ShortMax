package uo;

import ao.j0;
/* compiled from: Seeker.java */
/* loaded from: classes8.dex */
interface g extends j0 {

    /* compiled from: Seeker.java */
    /* loaded from: classes8.dex */
    public static class a extends j0.b implements g {
        public a() {
            super(-9223372036854775807L);
        }

        @Override // uo.g
        public long a() {
            return -1L;
        }

        @Override // uo.g
        public int g() {
            return -2147483647;
        }

        @Override // uo.g
        public long getTimeUs(long j10) {
            return 0L;
        }
    }

    long a();

    int g();

    long getTimeUs(long j10);
}
