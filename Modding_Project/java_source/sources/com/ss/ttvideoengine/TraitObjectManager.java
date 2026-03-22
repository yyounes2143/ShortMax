package com.ss.ttvideoengine;

import com.ss.ttm.player.TraitObject;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class TraitObjectManager {
    private Map<Integer, TraitObject> mTraitObjects = new HashMap();

    public TraitObject get(int i10) {
        return this.mTraitObjects.get(Integer.valueOf(i10));
    }

    public Map<Integer, TraitObject> getAll() {
        return new HashMap(this.mTraitObjects);
    }

    public void put(int i10, TraitObject traitObject) {
        synchronized (this) {
            try {
                TraitObject traitObject2 = this.mTraitObjects.get(Integer.valueOf(i10));
                if (traitObject2 == null && traitObject == null) {
                    return;
                }
                if (traitObject2 != traitObject && (traitObject2 == null || !traitObject2.sameAs(traitObject))) {
                    this.mTraitObjects.put(Integer.valueOf(i10), traitObject);
                    if (traitObject2 != null) {
                        traitObject2.release();
                    }
                }
            } finally {
            }
        }
    }

    public int remove(int i10) {
        synchronized (this) {
            try {
                TraitObject traitObject = this.mTraitObjects.get(Integer.valueOf(i10));
                if (traitObject == null) {
                    return -1;
                }
                this.mTraitObjects.remove(Integer.valueOf(i10));
                traitObject.release();
                return 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void removeAll() {
        if (this.mTraitObjects.size() <= 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        synchronized (this) {
            hashMap.putAll(this.mTraitObjects);
            this.mTraitObjects.clear();
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            ((TraitObject) entry.getValue()).release();
        }
    }
}
