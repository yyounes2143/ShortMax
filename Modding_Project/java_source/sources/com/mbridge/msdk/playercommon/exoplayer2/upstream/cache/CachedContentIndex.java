package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import android.util.SparseArray;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.AtomicFile;
import com.mbridge.msdk.playercommon.exoplayer2.util.ReusableBufferedOutputStream;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Random;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes6.dex */
class CachedContentIndex {
    public static final String FILE_NAME = "cached_content_index.exi";
    private static final int FLAG_ENCRYPTED_INDEX = 1;
    private static final int VERSION = 2;
    private final AtomicFile atomicFile;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private boolean changed;
    private final Cipher cipher;
    private final boolean encrypt;
    private final SparseArray<String> idToKey;
    private final HashMap<String, CachedContent> keyToContent;
    private final SecretKeySpec secretKeySpec;

    public CachedContentIndex(File file) {
        this(file, null);
    }

    private void add(CachedContent cachedContent) {
        this.keyToContent.put(cachedContent.key, cachedContent);
        this.idToKey.put(cachedContent.f28490id, cachedContent.key);
    }

    private CachedContent addNew(String str) {
        CachedContent cachedContent = new CachedContent(getNewId(this.idToKey), str);
        add(cachedContent);
        this.changed = true;
        return cachedContent;
    }

    private static Cipher getCipher() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (Util.SDK_INT == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public static int getNewId(SparseArray<String> sparseArray) {
        int keyAt;
        int size = sparseArray.size();
        int i10 = 0;
        if (size == 0) {
            keyAt = 0;
        } else {
            keyAt = sparseArray.keyAt(size - 1) + 1;
        }
        if (keyAt < 0) {
            while (i10 < size && i10 == sparseArray.keyAt(i10)) {
                i10++;
            }
            return i10;
        }
        return keyAt;
    }

    private boolean readFile() {
        boolean z10;
        DataInputStream dataInputStream = null;
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.atomicFile.openRead());
            DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
            try {
                int readInt = dataInputStream2.readInt();
                if (readInt >= 0 && readInt <= 2) {
                    if ((dataInputStream2.readInt() & 1) != 0) {
                        if (this.cipher == null) {
                            Util.closeQuietly(dataInputStream2);
                            return false;
                        }
                        byte[] bArr = new byte[16];
                        dataInputStream2.readFully(bArr);
                        try {
                            this.cipher.init(2, this.secretKeySpec, new IvParameterSpec(bArr));
                            dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.cipher));
                        } catch (InvalidAlgorithmParameterException e10) {
                            e = e10;
                            throw new IllegalStateException(e);
                        } catch (InvalidKeyException e11) {
                            e = e11;
                            throw new IllegalStateException(e);
                        }
                    } else if (this.encrypt) {
                        this.changed = true;
                    }
                    int readInt2 = dataInputStream2.readInt();
                    int i10 = 0;
                    for (int i11 = 0; i11 < readInt2; i11++) {
                        CachedContent readFromStream = CachedContent.readFromStream(readInt, dataInputStream2);
                        add(readFromStream);
                        i10 += readFromStream.headerHashCode(readInt);
                    }
                    int readInt3 = dataInputStream2.readInt();
                    if (dataInputStream2.read() == -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (readInt3 == i10 && z10) {
                        Util.closeQuietly(dataInputStream2);
                        return true;
                    }
                    Util.closeQuietly(dataInputStream2);
                    return false;
                }
                Util.closeQuietly(dataInputStream2);
                return false;
            } catch (IOException unused) {
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    Util.closeQuietly(dataInputStream);
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    Util.closeQuietly(dataInputStream);
                }
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void writeFile() throws Cache.CacheException {
        DataOutputStream dataOutputStream;
        Throwable th2;
        IOException e10;
        DataOutputStream dataOutputStream2 = null;
        try {
            OutputStream startWrite = this.atomicFile.startWrite();
            ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
            if (reusableBufferedOutputStream == null) {
                this.bufferedOutputStream = new ReusableBufferedOutputStream(startWrite);
            } else {
                reusableBufferedOutputStream.reset(startWrite);
            }
            dataOutputStream = new DataOutputStream(this.bufferedOutputStream);
        } catch (IOException e11) {
            e = e11;
        } catch (Throwable th3) {
            th = th3;
            Throwable th4 = th;
            dataOutputStream = dataOutputStream2;
            th2 = th4;
            Util.closeQuietly(dataOutputStream);
            throw th2;
        }
        try {
            dataOutputStream.writeInt(2);
            dataOutputStream.writeInt(this.encrypt ? 1 : 0);
            if (this.encrypt) {
                byte[] bArr = new byte[16];
                new Random().nextBytes(bArr);
                dataOutputStream.write(bArr);
                try {
                    this.cipher.init(1, this.secretKeySpec, new IvParameterSpec(bArr));
                    dataOutputStream.flush();
                    dataOutputStream = new DataOutputStream(new CipherOutputStream(this.bufferedOutputStream, this.cipher));
                } catch (InvalidAlgorithmParameterException e12) {
                    e = e12;
                    throw new IllegalStateException(e);
                } catch (InvalidKeyException e13) {
                    e = e13;
                    throw new IllegalStateException(e);
                }
            }
            try {
                try {
                    dataOutputStream.writeInt(this.keyToContent.size());
                    int i10 = 0;
                    for (CachedContent cachedContent : this.keyToContent.values()) {
                        cachedContent.writeToStream(dataOutputStream);
                        i10 += cachedContent.headerHashCode(2);
                    }
                    dataOutputStream.writeInt(i10);
                    this.atomicFile.endWrite(dataOutputStream);
                    Util.closeQuietly((Closeable) null);
                } catch (IOException e14) {
                    DataOutputStream dataOutputStream3 = dataOutputStream;
                    e = e14;
                    dataOutputStream2 = dataOutputStream3;
                    IOException iOException = e;
                    dataOutputStream = dataOutputStream2;
                    e10 = iOException;
                    throw new Cache.CacheException(e10);
                }
            } catch (Throwable th5) {
                DataOutputStream dataOutputStream4 = dataOutputStream;
                th = th5;
                dataOutputStream2 = dataOutputStream4;
                Throwable th42 = th;
                dataOutputStream = dataOutputStream2;
                th2 = th42;
                Util.closeQuietly(dataOutputStream);
                throw th2;
            }
        } catch (IOException e15) {
            e10 = e15;
            throw new Cache.CacheException(e10);
        } catch (Throwable th6) {
            th2 = th6;
            Util.closeQuietly(dataOutputStream);
            throw th2;
        }
    }

    public void applyContentMetadataMutations(String str, ContentMetadataMutations contentMetadataMutations) {
        if (getOrAdd(str).applyMetadataMutations(contentMetadataMutations)) {
            this.changed = true;
        }
    }

    public int assignIdForKey(String str) {
        return getOrAdd(str).f28490id;
    }

    public CachedContent get(String str) {
        return this.keyToContent.get(str);
    }

    public Collection<CachedContent> getAll() {
        return this.keyToContent.values();
    }

    public ContentMetadata getContentMetadata(String str) {
        CachedContent cachedContent = get(str);
        if (cachedContent != null) {
            return cachedContent.getMetadata();
        }
        return DefaultContentMetadata.EMPTY;
    }

    public String getKeyForId(int i10) {
        return this.idToKey.get(i10);
    }

    public Set<String> getKeys() {
        return this.keyToContent.keySet();
    }

    public CachedContent getOrAdd(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        if (cachedContent == null) {
            return addNew(str);
        }
        return cachedContent;
    }

    public void load() {
        Assertions.checkState(!this.changed);
        if (!readFile()) {
            this.atomicFile.delete();
            this.keyToContent.clear();
            this.idToKey.clear();
        }
    }

    public void maybeRemove(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        if (cachedContent != null && cachedContent.isEmpty() && !cachedContent.isLocked()) {
            this.keyToContent.remove(str);
            this.idToKey.remove(cachedContent.f28490id);
            this.changed = true;
        }
    }

    public void removeEmpty() {
        int size = this.keyToContent.size();
        String[] strArr = new String[size];
        this.keyToContent.keySet().toArray(strArr);
        for (int i10 = 0; i10 < size; i10++) {
            maybeRemove(strArr[i10]);
        }
    }

    public void store() throws Cache.CacheException {
        if (!this.changed) {
            return;
        }
        writeFile();
        this.changed = false;
    }

    public CachedContentIndex(File file, byte[] bArr) {
        this(file, bArr, bArr != null);
    }

    public CachedContentIndex(File file, byte[] bArr, boolean z10) {
        this.encrypt = z10;
        if (bArr != null) {
            Assertions.checkArgument(bArr.length == 16);
            try {
                this.cipher = getCipher();
                this.secretKeySpec = new SecretKeySpec(bArr, "AES");
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e10) {
                throw new IllegalStateException(e10);
            }
        } else {
            Assertions.checkState(!z10);
            this.cipher = null;
            this.secretKeySpec = null;
        }
        this.keyToContent = new HashMap<>();
        this.idToKey = new SparseArray<>();
        this.atomicFile = new AtomicFile(new File(file, FILE_NAME));
    }
}
