package b6;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import b7.g0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import t5.v;
/* compiled from: MetadataUtil.java */
/* loaded from: classes4.dex */
final class h {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final String[] f2349a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    @Nullable
    private static CommentFrame a(int i10, g0 g0Var) {
        int n10 = g0Var.n();
        if (g0Var.n() == 1684108385) {
            g0Var.Q(8);
            String y10 = g0Var.y(n10 - 16);
            return new CommentFrame(C.LANGUAGE_UNDETERMINED, y10, y10);
        }
        b7.q.i("MetadataUtil", "Failed to parse comment attribute: " + a.a(i10));
        return null;
    }

    @Nullable
    private static ApicFrame b(g0 g0Var) {
        String str;
        int n10 = g0Var.n();
        if (g0Var.n() == 1684108385) {
            int b10 = a.b(g0Var.n());
            if (b10 == 13) {
                str = "image/jpeg";
            } else if (b10 == 14) {
                str = "image/png";
            } else {
                str = null;
            }
            if (str == null) {
                b7.q.i("MetadataUtil", "Unrecognized cover art flags: " + b10);
                return null;
            }
            g0Var.Q(4);
            int i10 = n10 - 16;
            byte[] bArr = new byte[i10];
            g0Var.j(bArr, 0, i10);
            return new ApicFrame(str, null, 3, bArr);
        }
        b7.q.i("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    @Nullable
    public static Metadata.Entry c(g0 g0Var) {
        int e10 = g0Var.e() + g0Var.n();
        int n10 = g0Var.n();
        int i10 = (n10 >> 24) & 255;
        try {
            if (i10 != 169 && i10 != 253) {
                if (n10 == 1735291493) {
                    return g(g0Var);
                }
                if (n10 == 1684632427) {
                    return d(n10, "TPOS", g0Var);
                }
                if (n10 == 1953655662) {
                    return d(n10, "TRCK", g0Var);
                }
                if (n10 == 1953329263) {
                    return i(n10, "TBPM", g0Var, true, false);
                }
                if (n10 == 1668311404) {
                    return i(n10, "TCMP", g0Var, true, true);
                }
                if (n10 == 1668249202) {
                    return b(g0Var);
                }
                if (n10 == 1631670868) {
                    return h(n10, "TPE2", g0Var);
                }
                if (n10 == 1936682605) {
                    return h(n10, "TSOT", g0Var);
                }
                if (n10 == 1936679276) {
                    return h(n10, "TSO2", g0Var);
                }
                if (n10 == 1936679282) {
                    return h(n10, "TSOA", g0Var);
                }
                if (n10 == 1936679265) {
                    return h(n10, "TSOP", g0Var);
                }
                if (n10 == 1936679791) {
                    return h(n10, "TSOC", g0Var);
                }
                if (n10 == 1920233063) {
                    return i(n10, "ITUNESADVISORY", g0Var, false, false);
                }
                if (n10 == 1885823344) {
                    return i(n10, "ITUNESGAPLESS", g0Var, false, true);
                }
                if (n10 == 1936683886) {
                    return h(n10, "TVSHOWSORT", g0Var);
                }
                if (n10 == 1953919848) {
                    return h(n10, "TVSHOW", g0Var);
                }
                if (n10 == 757935405) {
                    return e(g0Var, e10);
                }
            } else {
                int i11 = 16777215 & n10;
                if (i11 == 6516084) {
                    return a(n10, g0Var);
                }
                if (i11 != 7233901 && i11 != 7631467) {
                    if (i11 != 6516589 && i11 != 7828084) {
                        if (i11 == 6578553) {
                            return h(n10, "TDRC", g0Var);
                        }
                        if (i11 == 4280916) {
                            return h(n10, "TPE1", g0Var);
                        }
                        if (i11 == 7630703) {
                            return h(n10, "TSSE", g0Var);
                        }
                        if (i11 == 6384738) {
                            return h(n10, "TALB", g0Var);
                        }
                        if (i11 == 7108978) {
                            return h(n10, "USLT", g0Var);
                        }
                        if (i11 == 6776174) {
                            return h(n10, "TCON", g0Var);
                        }
                        if (i11 == 6779504) {
                            return h(n10, "TIT1", g0Var);
                        }
                    } else {
                        return h(n10, "TCOM", g0Var);
                    }
                } else {
                    return h(n10, "TIT2", g0Var);
                }
            }
            b7.q.b("MetadataUtil", "Skipped unknown metadata entry: " + a.a(n10));
            g0Var.P(e10);
            return null;
        } finally {
            g0Var.P(e10);
        }
    }

    @Nullable
    private static TextInformationFrame d(int i10, String str, g0 g0Var) {
        int n10 = g0Var.n();
        if (g0Var.n() == 1684108385 && n10 >= 22) {
            g0Var.Q(10);
            int J = g0Var.J();
            if (J > 0) {
                String str2 = "" + J;
                int J2 = g0Var.J();
                if (J2 > 0) {
                    str2 = str2 + DomExceptionUtils.SEPARATOR + J2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        b7.q.i("MetadataUtil", "Failed to parse index/count attribute: " + a.a(i10));
        return null;
    }

    @Nullable
    private static Id3Frame e(g0 g0Var, int i10) {
        String str = null;
        String str2 = null;
        int i11 = -1;
        int i12 = -1;
        while (g0Var.e() < i10) {
            int e10 = g0Var.e();
            int n10 = g0Var.n();
            int n11 = g0Var.n();
            g0Var.Q(4);
            if (n11 == 1835360622) {
                str = g0Var.y(n10 - 12);
            } else if (n11 == 1851878757) {
                str2 = g0Var.y(n10 - 12);
            } else {
                if (n11 == 1684108385) {
                    i11 = e10;
                    i12 = n10;
                }
                g0Var.Q(n10 - 12);
            }
        }
        if (str == null || str2 == null || i11 == -1) {
            return null;
        }
        g0Var.P(i11);
        g0Var.Q(16);
        return new InternalFrame(str, str2, g0Var.y(i12 - 16));
    }

    @Nullable
    public static MdtaMetadataEntry f(g0 g0Var, int i10, String str) {
        while (true) {
            int e10 = g0Var.e();
            if (e10 < i10) {
                int n10 = g0Var.n();
                if (g0Var.n() == 1684108385) {
                    int n11 = g0Var.n();
                    int n12 = g0Var.n();
                    int i11 = n10 - 16;
                    byte[] bArr = new byte[i11];
                    g0Var.j(bArr, 0, i11);
                    return new MdtaMetadataEntry(str, bArr, n12, n11);
                }
                g0Var.P(e10 + n10);
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.metadata.id3.TextInformationFrame g(b7.g0 r3) {
        /*
            int r3 = j(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = b6.h.f2349a
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            b7.q.i(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b6.h.g(b7.g0):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    @Nullable
    private static TextInformationFrame h(int i10, String str, g0 g0Var) {
        int n10 = g0Var.n();
        if (g0Var.n() == 1684108385) {
            g0Var.Q(8);
            return new TextInformationFrame(str, null, g0Var.y(n10 - 16));
        }
        b7.q.i("MetadataUtil", "Failed to parse text attribute: " + a.a(i10));
        return null;
    }

    @Nullable
    private static Id3Frame i(int i10, String str, g0 g0Var, boolean z10, boolean z11) {
        int j10 = j(g0Var);
        if (z11) {
            j10 = Math.min(1, j10);
        }
        if (j10 >= 0) {
            if (z10) {
                return new TextInformationFrame(str, null, Integer.toString(j10));
            }
            return new CommentFrame(C.LANGUAGE_UNDETERMINED, str, Integer.toString(j10));
        }
        b7.q.i("MetadataUtil", "Failed to parse uint8 attribute: " + a.a(i10));
        return null;
    }

    private static int j(g0 g0Var) {
        g0Var.Q(4);
        if (g0Var.n() == 1684108385) {
            g0Var.Q(8);
            return g0Var.D();
        }
        b7.q.i("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i10, v vVar, v0.b bVar) {
        if (i10 == 1 && vVar.a()) {
            bVar.N(vVar.f67197a).O(vVar.f67198b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        if (r6 != null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void l(int r5, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r6, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r7, com.google.android.exoplayer2.v0.b r8, com.google.android.exoplayer2.metadata.Metadata... r9) {
        /*
            com.google.android.exoplayer2.metadata.Metadata r0 = new com.google.android.exoplayer2.metadata.Metadata
            r1 = 0
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r2 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3b
            goto L3c
        Le:
            r6 = 2
            if (r5 != r6) goto L3b
            if (r7 == 0) goto L3b
            r5 = r1
        L14:
            int r6 = r7.e()
            if (r5 >= r6) goto L3b
            com.google.android.exoplayer2.metadata.Metadata$Entry r6 = r7.d(r5)
            boolean r3 = r6 instanceof com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry r6 = (com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry) r6
            java.lang.String r3 = r6.f18070a
            java.lang.String r4 = "com.android.capture.fps"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.Metadata r5 = new com.google.android.exoplayer2.metadata.Metadata
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r7 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3c
        L39:
            int r5 = r5 + r2
            goto L14
        L3b:
            r6 = r0
        L3c:
            int r5 = r9.length
        L3d:
            if (r1 >= r5) goto L47
            r7 = r9[r1]
            com.google.android.exoplayer2.metadata.Metadata r6 = r6.b(r7)
            int r1 = r1 + r2
            goto L3d
        L47:
            int r5 = r6.e()
            if (r5 <= 0) goto L50
            r8.X(r6)
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b6.h.l(int, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.v0$b, com.google.android.exoplayer2.metadata.Metadata[]):void");
    }
}
